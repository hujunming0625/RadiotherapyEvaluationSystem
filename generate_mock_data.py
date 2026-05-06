#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Generate 3 years of mock data for the radiotherapy adverse event system."""
import random
import hashlib
from datetime import datetime, timedelta

random.seed(42)

# ============================================================
# Configuration
# ============================================================
PASSWORD_HASH = "$2a$04$.vd8nPeLwxt6hnSzmAoAyul8BOLX7Cib6QhcxRe30rfvrIPQHH1OG"
TENANT_ID = 0

# Users to create (start ID at 154)
USERS = [
    {"id": 154, "username": "doctorzhang", "nickname": "张伟", "dept_id": 200, "role_id": 200, "sex": 1, "mobile": "13800001001"},
    {"id": 155, "username": "doctorli", "nickname": "李芳", "dept_id": 201, "role_id": 200, "sex": 2, "mobile": "13800001002"},
    {"id": 156, "username": "deptwang", "nickname": "王强", "dept_id": 200, "role_id": 201, "sex": 1, "mobile": "13800001003"},
    {"id": 157, "username": "funcchen", "nickname": "陈静", "dept_id": 205, "role_id": 202, "sex": 2, "mobile": "13800001004"},
    {"id": 158, "username": "leaderzhao", "nickname": "赵明", "dept_id": 1, "role_id": 203, "sex": 1, "mobile": "13800001005"},
    {"id": 159, "username": "committeeliu", "nickname": "刘洋", "dept_id": 206, "role_id": 204, "sex": 1, "mobile": "13800001006"},
]
REPORTER_IDS = [154, 155]  # doctor_zhang, doctor_li
DEPT_HEAD_ID = 156  # dept_wang
FUNC_HEAD_ID = 157  # func_chen
LEADER_ID = 158  # leader_zhao
COMMITTEE_ID = 159  # committee_liu
ADMIN_ID = 1

# Departments
DEPT_IDS = [200, 201, 202, 203, 204, 205, 206, 207, 208, 209]
FUNC_DEPT_MAP = {
    "MEDICAL": 205,    # 医务处
    "NURSING": 205,    # 医务处
    "INFECTION": 206,  # 质管办
    "DEVICE": 208,     # 设备科
    "INFO": 207,       # 院中管理部门
    "LOGISTICS": 207,  # 院中管理部门
}

# Templates (category -> template_id)
TEMPLATE_MAP = {"MEDICAL": 1, "NURSING": 2, "INFECTION": 3, "DEVICE": 4, "LOGISTICS": 5}

# Categories with weights
CATEGORIES = ["MEDICAL", "NURSING", "INFECTION", "DEVICE", "INFO", "LOGISTICS"]
CATEGORY_WEIGHTS = [30, 35, 15, 10, 5, 5]

# Levels with weights
LEVELS = [1, 2, 3, 4]
LEVEL_WEIGHTS = [5, 15, 45, 35]

# Status distribution weights (for completed events)
# For events still in process, we'll assign based on time
STATUS_COMPLETED = 50
STATUS_RETURNED = 60
STATUS_VOIDED = 70
STATUS_NOT_TRUE = 80

# Causes
CAUSES = ["HUMAN", "EQUIPMENT", "PROCESS", "ENVIRONMENT", "MEDICATION", "OTHER"]
CAUSE_WEIGHTS = [30, 15, 25, 10, 15, 5]

# Damage levels
DAMAGE_LEVELS = [0, 1, 2, 3, 4]
DAMAGE_WEIGHTS = [10, 35, 30, 20, 5]

# Event descriptions by category
DESCRIPTIONS = {
    "MEDICAL": [
        "患者在放疗过程中出现定位偏差，导致照射野偏移约5mm，经及时发现并纠正。",
        "放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。",
        "患者在放疗过程中出现严重皮肤反应，III级放射性皮炎，需要暂停治疗。",
        "放疗设备晨检时发现输出剂量异常，偏差超过3%，需停机检修。",
        "患者放疗计划中靶区勾画存在争议，多学科会诊后修改了治疗方案。",
        "放疗过程中患者体位移动，导致CBCT验证发现偏差超限，需重新摆位。",
        "放射治疗中发现患者合并用药与放疗存在相互作用，需调整用药方案。",
        "放疗计划中危及器官限量超标，经物理师复核后重新优化计划。",
    ],
    "NURSING": [
        "患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。",
        "放疗前患者身份核对出现错误，差点给错误患者执行治疗。",
        "放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。",
        "放疗患者静脉通路维护不当，导致药物外渗，局部肿胀。",
        "放疗期间患者营养评估不到位，体重下降超过10%，影响治疗效果。",
        "患者放疗后出现严重恶心呕吐，护理记录不完整，未及时报告医生。",
        "放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。",
    ],
    "INFECTION": [
        "放疗科发现多重耐药菌感染病例，需要加强感染防控措施。",
        "放疗设备表面采样检出致病菌，消毒流程存在漏洞。",
        "放疗等候区通风系统故障，空气质量检测不达标。",
        "放疗患者PICC置管处出现感染征象，需要抗感染治疗。",
        "放疗科医护人员手卫生依从性检查发现不合格，需要整改。",
    ],
    "DEVICE": [
        "直线加速器输出剂量偏差超标，需要紧急停机检修。",
        "放疗定位CT图像质量下降，影响靶区勾画精度。",
        "放疗计划系统软件出现故障，无法正常进行剂量计算。",
        "放疗设备MLC叶片运动异常，影响调强放疗的实施质量。",
        "放疗验证设备（EPID）图像采集失败，无法进行治疗验证。",
    ],
    "INFO": [
        "放疗信息系统与HIS系统接口异常，患者信息同步失败。",
        "放疗计划数据备份失败，存在数据丢失风险。",
        "放疗设备监控系统报警延迟，未能及时发现设备异常。",
    ],
    "LOGISTICS": [
        "放疗科空调系统故障，治疗室温度超标，影响设备运行。",
        "放疗科供电系统不稳定，设备意外断电导致治疗中断。",
        "放疗等候区座椅损坏，存在安全隐患。",
    ],
}

# Processing opinions
DEPT_OPINIONS = [
    "经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。",
    "经科室调查，事件原因为设备因素，已联系设备科进行检修维护。",
    "科室已对事件进行初步分析，认为需要职能部门进一步评估处理。",
    "经科室讨论，已制定整改措施并落实到人，限期整改完成。",
    "科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。",
]

FUNC_OPINIONS = [
    "经职能部门调查评估，认定事件原因为{cause}，损害程度为{damage}。已制定改进方案。",
    "已完成事件调查，确认事件属实。建议加强{area}方面的管理和培训。",
    "经专家评估，该事件属于系统性问题，建议从制度层面进行改进。",
    "已完成事件定性定级，事件级别为{level}级，建议按流程继续上报处理。",
    "经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。",
]

LEADER_OPINIONS = [
    "同意职能部门处理意见，要求相关科室认真落实整改措施。",
    "该事件性质严重，同意提交质量委员会讨论，制定系统性改进方案。",
    "已审阅事件报告，同意处理意见。要求质控办持续跟踪整改效果。",
    "同意按流程处理，要求举一反三，在全院范围内开展安全教育。",
]

COMMITTEE_OPINIONS = [
    "经质量委员会讨论，认为该事件反映出科室管理存在薄弱环节，建议：1.完善相关制度流程；2.加强人员培训考核；3.建立长效监督机制。",
    "质量委员会一致同意该事件的处理意见。建议将此事件作为典型案例，在全院进行警示教育。",
    "经委员会讨论，制定了以下改进措施：1.修订操作规程；2.增加质量控制节点；3.定期开展应急演练。",
]

RETURN_OPINIONS = [
    "报告内容不完整，缺少关键信息，请补充后重新提交。",
    "事件描述不够详细，请补充事件发生的经过、原因分析和已采取的措施。",
    "报告中时间信息有误，请核实后更正重新提交。",
]

# Committee IDs for voting
COMMITTEE_IDS = [1, 2, 3, 4, 5, 6, 7, 8]


def gen_event_no(date, seq):
    return f"AE{date.strftime('%Y%m%d')}{seq:03d}"


def gen_form_data(category):
    items = [
        {"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"},
        {"label": "事件类别", "value": category, "type": "SELECT"},
        {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"},
    ]
    import json
    return json.dumps(items, ensure_ascii=False)


def gen_events():
    """Generate ~300 events over 36 months."""
    events = []
    start_date = datetime(2023, 5, 1)
    end_date = datetime(2026, 5, 6)
    current = start_date
    event_id = 6  # existing events: 1-5
    daily_seq = {}

    while current < end_date:
        # Determine monthly count based on time period
        months_elapsed = (current.year - 2023) * 12 + current.month - 5
        if months_elapsed < 12:
            monthly_base = random.randint(6, 8)
        elif months_elapsed < 24:
            monthly_base = random.randint(8, 10)
        else:
            monthly_base = random.randint(10, 12)

        # Distribute events across the month
        days_in_month = 28 if current.month == 2 else (30 if current.month in [4,6,9,11] else 31)
        events_this_month = monthly_base

        for _ in range(events_this_month):
            day = random.randint(1, days_in_month)
            hour = random.randint(8, 18)
            minute = random.randint(0, 59)
            try:
                report_time = current.replace(day=day, hour=hour, minute=minute, second=0)
            except ValueError:
                report_time = current.replace(day=days_in_month, hour=hour, minute=minute, second=0)

            if report_time >= end_date:
                continue

            date_key = report_time.strftime('%Y%m%d')
            daily_seq[date_key] = daily_seq.get(date_key, 0) + 1
            seq = daily_seq[date_key]

            category = random.choices(CATEGORIES, weights=CATEGORY_WEIGHTS)[0]
            level = random.choices(LEVELS, weights=LEVEL_WEIGHTS)[0]
            reporter_id = random.choice(REPORTER_IDS)
            reporter_type = 1 if random.random() < 0.85 else 2  # 85% real name
            report_mode = 1 if random.random() < 0.80 else 2  # 80% escalating
            dept_id = 200 if reporter_id == 154 else 201
            template_id = TEMPLATE_MAP.get(category, 1)

            # Determine final status
            now = datetime(2026, 5, 6, 10, 0, 0)
            days_since = (now - report_time).days

            if days_since < 3:
                # Very recent - still in early processing
                status = random.choice([0, 10])
            elif days_since < 7:
                status = random.choice([10, 20])
            elif days_since < 14:
                r = random.random()
                if r < 0.4:
                    status = 20
                elif r < 0.7:
                    status = 50
                elif r < 0.85:
                    status = 30 if level <= 2 else 50
                else:
                    status = random.choice([60, 70, 80])
            else:
                r = random.random()
                if r < 0.55:
                    status = 50  # completed
                elif r < 0.63:
                    status = 60  # returned
                elif r < 0.68:
                    status = 70  # voided
                elif r < 0.75:
                    status = 80  # not true
                elif r < 0.85:
                    status = random.choice([10, 20, 30, 40])  # in process
                else:
                    status = 50

            # For level 1-2 events that are completed, ensure they went through leader
            if status == 50 and level <= 2 and days_since > 14:
                if random.random() < 0.3:
                    status = 50  # went through committee

            cause = random.choices(CAUSES, weights=CAUSE_WEIGHTS)[0]
            damage_level = random.choices(DAMAGE_LEVELS, weights=DAMAGE_WEIGHTS)[0]
            need_track = 1 if status == 50 and random.random() < 0.3 else 0

            desc = random.choice(DESCRIPTIONS.get(category, DESCRIPTIONS["MEDICAL"]))
            form_data = gen_form_data(category)

            # Determine current handler
            current_handler_id = None
            current_dept_id = None
            if status == 10:
                current_handler_id = DEPT_HEAD_ID
                current_dept_id = dept_id
            elif status == 20:
                current_handler_id = FUNC_HEAD_ID
                current_dept_id = FUNC_DEPT_MAP.get(category, 205)
            elif status == 30:
                current_handler_id = LEADER_ID
                current_dept_id = 1
            elif status == 40:
                current_handler_id = COMMITTEE_ID
                current_dept_id = 206

            events.append({
                "id": event_id,
                "event_no": gen_event_no(report_time, seq),
                "template_id": template_id,
                "category": category,
                "level": level,
                "status": status,
                "reporter_id": reporter_id,
                "reporter_type": reporter_type,
                "report_time": report_time,
                "dept_id": dept_id,
                "description": desc,
                "form_data": form_data,
                "current_handler_id": current_handler_id,
                "current_dept_id": current_dept_id,
                "report_mode": report_mode,
                "cause": cause,
                "damage_level": damage_level,
                "need_track": need_track,
            })
            event_id += 1

        # Move to next month
        if current.month == 12:
            current = current.replace(year=current.year + 1, month=1)
        else:
            current = current.replace(month=current.month + 1)

    return events


def gen_flows(events):
    """Generate flow records for each event based on its status."""
    flows = []
    flow_id = 13  # existing flows: 1-12

    for ev in events:
        report_time = ev["report_time"]
        status = ev["status"]
        level = ev["level"]
        category = ev["category"]
        event_id = ev["id"]
        dept_id = ev["dept_id"]
        cause = ev["cause"]
        damage_level = ev["damage_level"]
        need_track = ev["need_track"]

        func_dept = FUNC_DEPT_MAP.get(category, 205)

        # 1. SUBMIT flow (always)
        submit_time = report_time + timedelta(minutes=random.randint(0, 30))
        to_status = 10 if ev["report_mode"] == 1 else 20
        flows.append({
            "id": flow_id, "event_id": event_id,
            "from_status": 0, "to_status": to_status,
            "handler_id": ev["reporter_id"],
            "action": "SUBMIT", "opinion": None,
            "cause": None, "damage_level": None, "need_track": None,
            "transfer_dept_id": None, "handle_time": submit_time,
        })
        flow_id += 1

        if status == 0:  # Draft - no more flows
            continue

        # 2. DEPT processing (if escalating mode)
        if ev["report_mode"] == 1 and status not in [10]:
            dept_process_time = submit_time + timedelta(days=random.randint(1, 5), hours=random.randint(0, 8))
            flows.append({
                "id": flow_id, "event_id": event_id,
                "from_status": 10, "to_status": 20,
                "handler_id": DEPT_HEAD_ID,
                "action": "PROCESS",
                "opinion": random.choice(DEPT_OPINIONS),
                "cause": None, "damage_level": None, "need_track": None,
                "transfer_dept_id": func_dept,
                "handle_time": dept_process_time,
            })
            flow_id += 1
            last_time = dept_process_time
        else:
            last_time = submit_time

        if status in [10]:  # Still at dept
            continue

        # 3. FUNC processing
        if status not in [20]:
            func_time = last_time + timedelta(days=random.randint(2, 7), hours=random.randint(0, 8))

            if status == 60:  # Returned by func dept
                flows.append({
                    "id": flow_id, "event_id": event_id,
                    "from_status": 20, "to_status": 60,
                    "handler_id": FUNC_HEAD_ID,
                    "action": "RETURN",
                    "opinion": random.choice(RETURN_OPINIONS),
                    "cause": None, "damage_level": None, "need_track": None,
                    "transfer_dept_id": None, "handle_time": func_time,
                })
                flow_id += 1
                continue

            if status == 70:  # Voided by func dept
                flows.append({
                    "id": flow_id, "event_id": event_id,
                    "from_status": 20, "to_status": 70,
                    "handler_id": FUNC_HEAD_ID,
                    "action": "VOID",
                    "opinion": "经核实，该事件不属于不良事件范畴，予以作废。",
                    "cause": None, "damage_level": None, "need_track": None,
                    "transfer_dept_id": None, "handle_time": func_time,
                })
                flow_id += 1
                continue

            if status == 80:  # Not true
                flows.append({
                    "id": flow_id, "event_id": event_id,
                    "from_status": 20, "to_status": 80,
                    "handler_id": FUNC_HEAD_ID,
                    "action": "NOT_TRUE",
                    "opinion": "经调查核实，该事件举报内容不属实，相关情况说明已存档。",
                    "cause": None, "damage_level": None, "need_track": None,
                    "transfer_dept_id": None, "handle_time": func_time,
                })
                flow_id += 1
                continue

            # Normal func processing
            func_opinion = random.choice(FUNC_OPINIONS).format(
                cause=cause, damage=damage_level, area="操作规范", level=level
            )

            if level <= 2:
                # Goes to leader
                flows.append({
                    "id": flow_id, "event_id": event_id,
                    "from_status": 20, "to_status": 30,
                    "handler_id": FUNC_HEAD_ID,
                    "action": "PROCESS",
                    "opinion": func_opinion,
                    "cause": cause, "damage_level": damage_level,
                    "need_track": need_track,
                    "transfer_dept_id": None, "handle_time": func_time,
                })
                flow_id += 1
                last_time = func_time
            else:
                # Completed at func level
                flows.append({
                    "id": flow_id, "event_id": event_id,
                    "from_status": 20, "to_status": 50,
                    "handler_id": FUNC_HEAD_ID,
                    "action": "PROCESS",
                    "opinion": func_opinion,
                    "cause": cause, "damage_level": damage_level,
                    "need_track": need_track,
                    "transfer_dept_id": None, "handle_time": func_time,
                })
                flow_id += 1
                continue

        if status in [20]:  # Still at func
            continue

        # 4. LEADER processing (level 1-2 only)
        if level <= 2 and status not in [30]:
            leader_time = last_time + timedelta(days=random.randint(1, 5), hours=random.randint(0, 8))

            if status == 40:  # Sent to committee
                flows.append({
                    "id": flow_id, "event_id": event_id,
                    "from_status": 30, "to_status": 40,
                    "handler_id": LEADER_ID,
                    "action": "TO_COMMITTEE",
                    "opinion": random.choice(LEADER_OPINIONS),
                    "cause": None, "damage_level": None, "need_track": None,
                    "transfer_dept_id": None, "handle_time": leader_time,
                })
                flow_id += 1
                last_time = leader_time
            else:  # Completed by leader
                flows.append({
                    "id": flow_id, "event_id": event_id,
                    "from_status": 30, "to_status": 50,
                    "handler_id": LEADER_ID,
                    "action": "PROCESS",
                    "opinion": random.choice(LEADER_OPINIONS),
                    "cause": None, "damage_level": None, "need_track": None,
                    "transfer_dept_id": None, "handle_time": leader_time,
                })
                flow_id += 1
                continue

        if status in [30]:  # Still at leader
            continue

        # 5. COMMITTEE processing
        if status == 50 and level <= 2 and len(flows) > 0 and flows[-1]["to_status"] == 40:
            committee_time = last_time + timedelta(days=random.randint(3, 10), hours=random.randint(0, 8))
            flows.append({
                "id": flow_id, "event_id": event_id,
                "from_status": 40, "to_status": 50,
                "handler_id": COMMITTEE_ID,
                "action": "PROCESS",
                "opinion": random.choice(COMMITTEE_OPINIONS),
                "cause": cause, "damage_level": damage_level,
                "need_track": need_track,
                "transfer_dept_id": None, "handle_time": committee_time,
            })
            flow_id += 1

    return flows


def gen_tracks(events):
    """Generate tracking records for ~30% of completed events."""
    tracks = []
    track_id = 4  # existing tracks: 1-3

    for ev in events:
        if ev["status"] != 50 or ev["need_track"] != 1:
            continue

        # 1-3 tracking records per event
        num_tracks = random.randint(1, 3)
        base_time = ev["report_time"] + timedelta(days=random.randint(15, 30))

        for i in range(num_tracks):
            track_time = base_time + timedelta(days=i * random.randint(7, 30))
            if track_time > datetime(2026, 5, 6):
                continue

            remind_time = track_time + timedelta(days=random.randint(7, 30))
            contents = [
                f"第{i+1}次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。",
                f"第{i+1}次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。",
                f"第{i+1}次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。",
            ]

            tracks.append({
                "id": track_id,
                "event_id": ev["id"],
                "track_time": track_time,
                "remind_time": remind_time,
                "content": random.choice(contents),
                "tracker_id": FUNC_HEAD_ID,
                "status": 2 if track_time < datetime(2026, 4, 1) else 1,
            })
            track_id += 1

    return tracks


def gen_notifications(events, flows):
    """Generate notifications for each event."""
    notifies = []
    notify_id = 1

    for ev in events:
        event_id = ev["id"]
        category = ev["category"]
        func_dept = FUNC_DEPT_MAP.get(category, 205)

        # Notify dept head when event is submitted
        if ev["report_mode"] == 1 and ev["status"] not in [0]:
            notifies.append({
                "id": notify_id, "event_id": event_id,
                "dept_id": ev["dept_id"],
                "notify_user_id": DEPT_HEAD_ID,
                "content": f"您有新的不良事件待处理：{ev['event_no']}",
                "status": 1,
            })
            notify_id += 1

        # Notify func dept head when dept processes
        if ev["status"] not in [0, 10, 60]:
            notifies.append({
                "id": notify_id, "event_id": event_id,
                "dept_id": func_dept,
                "notify_user_id": FUNC_HEAD_ID,
                "content": f"不良事件已转入职能部门处理：{ev['event_no']}",
                "status": 1 if ev["status"] != 20 else 0,
            })
            notify_id += 1

        # Notify leader for level 1-2
        if ev["level"] <= 2 and ev["status"] not in [0, 10, 20, 60, 70, 80]:
            notifies.append({
                "id": notify_id, "event_id": event_id,
                "dept_id": 1,
                "notify_user_id": LEADER_ID,
                "content": f"不良事件需要院领导审批：{ev['event_no']}",
                "status": 1 if ev["status"] != 30 else 0,
            })
            notify_id += 1

        # Notify committee for level 1-2 that went to committee
        if ev["status"] in [40, 50] and ev["level"] <= 2:
            # Check if this event actually went to committee
            went_to_committee = any(f["event_id"] == event_id and f["to_status"] == 40 for f in flows)
            if went_to_committee:
                notifies.append({
                    "id": notify_id, "event_id": event_id,
                    "dept_id": 206,
                    "notify_user_id": COMMITTEE_ID,
                    "content": f"不良事件需要质量委员会讨论：{ev['event_no']}",
                    "status": 1 if ev["status"] == 50 else 0,
                })
                notify_id += 1

    return notifies


def gen_sql(users, events, flows, tracks, notifies):
    """Generate the complete SQL file."""
    lines = []
    lines.append("-- ============================================================")
    lines.append("-- Mock Data for Radiotherapy Adverse Event System")
    lines.append("-- Generated: 2026-05-06")
    lines.append(f"-- Events: {len(events)}, Flows: {len(flows)}, Tracks: {len(tracks)}, Notifications: {len(notifies)}")
    lines.append("-- ============================================================")
    lines.append("")
    lines.append("START TRANSACTION;")
    lines.append("")

    # 1. Users
    lines.append("-- ============================================================")
    lines.append("-- PHASE 1: Create user accounts")
    lines.append("-- ============================================================")
    for u in users:
        lines.append(f"INSERT INTO system_users (id, username, password, nickname, sex, mobile, dept_id, status, creator, create_time, updater, update_time, deleted, tenant_id)")
        lines.append(f"VALUES ({u['id']}, '{u['username']}', '{PASSWORD_HASH}', '{u['nickname']}', {u['sex']}, '{u['mobile']}', {u['dept_id']}, 0, 'admin', NOW(), 'admin', NOW(), 0, {TENANT_ID});")
    lines.append("")

    # 2. User roles
    lines.append("-- ============================================================")
    lines.append("-- PHASE 2: Assign roles to users")
    lines.append("-- ============================================================")
    for u in users:
        lines.append(f"INSERT INTO system_user_role (user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id)")
        lines.append(f"VALUES ({u['id']}, {u['role_id']}, 'admin', NOW(), 'admin', NOW(), 0, {TENANT_ID});")
        # Also give role 2 (default user role) for basic access
        lines.append(f"INSERT INTO system_user_role (user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id)")
        lines.append(f"VALUES ({u['id']}, 2, 'admin', NOW(), 'admin', NOW(), 0, {TENANT_ID});")
    lines.append("")

    # 3. User posts
    lines.append("-- ============================================================")
    lines.append("-- PHASE 3: Assign posts to users")
    lines.append("-- ============================================================")
    for u in users:
        post_id = 4  # 普通员工
        lines.append(f"INSERT INTO system_user_post (user_id, post_id, creator, create_time, updater, update_time, deleted, tenant_id)")
        lines.append(f"VALUES ({u['id']}, {post_id}, 'admin', NOW(), 'admin', NOW(), 0, {TENANT_ID});")
    lines.append("")

    # 4. Adverse events
    lines.append("-- ============================================================")
    lines.append(f"-- PHASE 4: Insert {len(events)} adverse events")
    lines.append("-- ============================================================")
    for ev in events:
        rt = ev["report_time"].strftime('%Y-%m-%d %H:%M:%S')
        desc = ev["description"].replace("'", "\\'")
        fd = ev["form_data"].replace("'", "\\'")
        handler = ev["current_handler_id"] or "NULL"
        cdept = ev["current_dept_id"] or "NULL"
        handler_str = str(handler) if handler != "NULL" else "NULL"
        cdept_str = str(cdept) if cdept != "NULL" else "NULL"

        lines.append(f"INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)")
        lines.append(f"VALUES ({ev['id']}, '{ev['event_no']}', {ev['template_id']}, '{ev['category']}', {ev['level']}, {ev['status']}, {ev['reporter_id']}, {ev['reporter_type']}, '{rt}', {ev['dept_id']}, '{desc}', '{fd}', {handler_str}, {cdept_str}, {ev['report_mode']}, '{ev['reporter_id']}', '{rt}', '{ev['reporter_id']}', '{rt}', 0, {TENANT_ID});")
    lines.append("")

    # 5. Event flows
    lines.append("-- ============================================================")
    lines.append(f"-- PHASE 5: Insert {len(flows)} event flow records")
    lines.append("-- ============================================================")
    for fl in flows:
        ht = fl["handle_time"].strftime('%Y-%m-%d %H:%M:%S')
        opinion = fl["opinion"].replace("'", "\\'") if fl["opinion"] else "NULL"
        opinion_str = f"'{opinion}'" if opinion != "NULL" else "NULL"
        cause = f"'{fl['cause']}'" if fl["cause"] else "NULL"
        dl = fl["damage_level"] if fl["damage_level"] is not None else "NULL"
        nt = fl["need_track"] if fl["need_track"] is not None else "NULL"
        td = fl["transfer_dept_id"] if fl["transfer_dept_id"] else "NULL"

        lines.append(f"INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)")
        lines.append(f"VALUES ({fl['id']}, {fl['event_id']}, {fl['from_status']}, {fl['to_status']}, {fl['handler_id']}, '{fl['action']}', {opinion_str}, {cause}, {dl}, {nt}, {td}, '{ht}', '{fl['handler_id']}', '{ht}', '{fl['handler_id']}', '{ht}', 0, {TENANT_ID});")
    lines.append("")

    # 6. Track records
    lines.append("-- ============================================================")
    lines.append(f"-- PHASE 6: Insert {len(tracks)} tracking records")
    lines.append("-- ============================================================")
    for tr in tracks:
        tt = tr["track_time"].strftime('%Y-%m-%d %H:%M:%S')
        rt = tr["remind_time"].strftime('%Y-%m-%d %H:%M:%S')
        content = tr["content"].replace("'", "\\'")

        lines.append(f"INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)")
        lines.append(f"VALUES ({tr['id']}, {tr['event_id']}, '{tt}', '{rt}', '{content}', {tr['tracker_id']}, {tr['status']}, 'admin', NOW(), 'admin', NOW(), 0, {TENANT_ID});")
    lines.append("")

    # 7. Notifications
    lines.append("-- ============================================================")
    lines.append(f"-- PHASE 7: Insert {len(notifies)} notifications")
    lines.append("-- ============================================================")
    for n in notifies:
        content = n["content"].replace("'", "\\'")
        lines.append(f"INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)")
        lines.append(f"VALUES ({n['id']}, {n['event_id']}, {n['dept_id']}, {n['notify_user_id']}, '{content}', {n['status']}, 'admin', NOW(), 'admin', NOW(), 0, {TENANT_ID});")
    lines.append("")

    # 8. Committee votes for events that went to committee
    lines.append("-- ============================================================")
    lines.append("-- PHASE 8: Insert committee votes")
    lines.append("-- ============================================================")
    vote_id = 1
    for ev in events:
        if ev["status"] in [40, 50] and ev["level"] <= 2:
            went_to_committee = any(f["event_id"] == ev["id"] and f["to_status"] == 40 for f in flows)
            if went_to_committee:
                committee_id = random.choice(COMMITTEE_IDS[:3])
                for user_id in [COMMITTEE_ID, ADMIN_ID]:
                    vote_time = ev["report_time"] + timedelta(days=random.randint(20, 40))
                    if vote_time > datetime(2026, 5, 6):
                        vote_time = datetime(2026, 5, 6)
                    vt = vote_time.strftime('%Y-%m-%d %H:%M:%S')
                    opinion = random.choice(COMMITTEE_OPINIONS).replace("'", "\\'")
                    lines.append(f"INSERT INTO ae_committee_vote (id, event_id, committee_id, user_id, vote, opinion, vote_time, creator, create_time, updater, update_time, deleted, tenant_id)")
                    lines.append(f"VALUES ({vote_id}, {ev['id']}, {committee_id}, {user_id}, 1, '{opinion}', '{vt}', 'admin', NOW(), 'admin', NOW(), 0, {TENANT_ID});")
                    vote_id += 1
    lines.append("")

    # 9. Verification
    lines.append("-- ============================================================")
    lines.append("-- Verification")
    lines.append("-- ============================================================")
    lines.append("SELECT '=== New Users ===' AS info;")
    lines.append("SELECT id, username, nickname, dept_id FROM system_users WHERE id >= 154 AND deleted = 0 ORDER BY id;")
    lines.append("SELECT '=== User Roles ===' AS info;")
    lines.append("SELECT ur.user_id, u.username, ur.role_id FROM system_user_role ur JOIN system_users u ON ur.user_id = u.id WHERE ur.user_id >= 154 AND ur.deleted = 0;")
    lines.append("SELECT '=== Event Count ===' AS info;")
    lines.append("SELECT COUNT(*) as total_events FROM ae_adverse_event WHERE deleted = 0;")
    lines.append("SELECT '=== Events by Status ===' AS info;")
    lines.append("SELECT status, COUNT(*) as cnt FROM ae_adverse_event WHERE deleted = 0 GROUP BY status ORDER BY status;")
    lines.append("SELECT '=== Events by Category ===' AS info;")
    lines.append("SELECT category, COUNT(*) as cnt FROM ae_adverse_event WHERE deleted = 0 GROUP BY category ORDER BY cnt DESC;")
    lines.append("SELECT '=== Events by Year ===' AS info;")
    lines.append("SELECT YEAR(report_time) as yr, COUNT(*) as cnt FROM ae_adverse_event WHERE deleted = 0 GROUP BY yr ORDER BY yr;")
    lines.append("SELECT '=== Flow Records ===' AS info;")
    lines.append("SELECT COUNT(*) as total_flows FROM ae_event_flow WHERE deleted = 0;")
    lines.append("SELECT '=== Track Records ===' AS info;")
    lines.append("SELECT COUNT(*) as total_tracks FROM ae_event_track WHERE deleted = 0;")
    lines.append("SELECT '=== Notifications ===' AS info;")
    lines.append("SELECT COUNT(*) as total_notifies FROM ae_event_notify WHERE deleted = 0;")
    lines.append("")
    lines.append("COMMIT;")

    return "\n".join(lines)


def main():
    print("Generating mock data...")
    events = gen_events()
    print(f"  Events: {len(events)}")

    flows = gen_flows(events)
    print(f"  Flows: {len(flows)}")

    tracks = gen_tracks(events)
    print(f"  Tracks: {len(tracks)}")

    notifies = gen_notifications(events, flows)
    print(f"  Notifications: {len(notifies)}")

    sql = gen_sql(USERS, events, flows, tracks, notifies)

    output_path = "E:/RadiotherapyEvaluationSystem/code/sql/mock_data_full.sql"
    with open(output_path, "w", encoding="utf-8") as f:
        f.write(sql)
    print(f"  SQL written to: {output_path}")
    print(f"  File size: {len(sql)} bytes")


if __name__ == "__main__":
    main()
