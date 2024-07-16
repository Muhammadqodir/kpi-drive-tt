class Task {
  int? indicatorToMoHstId;
  int? indicatorToMoId;
  String? hierarchicalNum;
  int? sequentialNum;
  String? baseIndicatorHierarchicalNum;
  String? type;
  int? trafficLight;
  int? weight;
  int? plan;
  int? planPrevious;
  int? planDefault;
  int? fact;
  int? factPrevious;
  int? factAccepted;
  int? factPending;
  bool? noFacts;
  int? result;
  int? resultDirect;
  int? weightResult;
  String? name;
  String? shortName;
  String? baseIndicatorName;
  String? baseIndicatorShortName;
  String? baseIndicatorDescription;
  String? description;
  int? costPlan;
  int? costFact;
  int? costAccepted;
  int? parentId;
  String? parentName;
  int? moId;
  int? indicatorId;
  int? calculationId;
  String? calculationKey;
  int? measureId;
  int? interpretationId;
  String? liveStart;
  String? liveEnd;
  String? executionStart;
  String? executionEnd;
  int? planPeriodId;
  int? factPeriodId;
  String? weightExpression;
  String? planExpression;
  String? factExpression;
  String? resultExpression;
  int? authorId;
  String? author;
  int? order;
  int? planResponsibleTypeId;
  int? factResponsibleTypeId;
  int? planResponsibleMoId;
  int? factResponsibleMoId;
  String? planResponsibleUser;
  String? factResponsibleUser;
  int? plansCount;
  int? factsCount;
  int? planMissedCount;
  int? factMissedCount;
  String? consumers;
  bool? controlled;
  String? markCriterion;
  bool? isPayMain;
  int? factDay;
  bool? factMonthEnd;
  bool? planPeriodicCounting;
  bool? planAsLastFact;
  int? showAllFacts;
  String? lastPostTime;
  String? lastPostComment;
  String? lastPostAuthor;
  bool? allowEdit;
  List<Null>? missedActions;
  int? priority;
  int? repeatPeriod;
  String? created;
  bool? isNotify;
  int? notifyDays;
  bool? notifyRegular;
  int? taskStatus;
  String? taskStatusFmt;
  String? taskStatusDesc;
  int? taskMark;
  int? sequence;
  bool? factCommon;
  bool? planCommon;
  int? standardOperationTime;
  List<Null>? tags;
  List<Null>? files;
  int? childNum;
  int? calculatingPeriod;
  int? precision;
  bool? hidden;
  String? usedSupertags;
  String? autoSupertags;

  Task(
      {this.indicatorToMoHstId,
      this.indicatorToMoId,
      this.hierarchicalNum,
      this.sequentialNum,
      this.baseIndicatorHierarchicalNum,
      this.type,
      this.trafficLight,
      this.weight,
      this.plan,
      this.planPrevious,
      this.planDefault,
      this.fact,
      this.factPrevious,
      this.factAccepted,
      this.factPending,
      this.noFacts,
      this.result,
      this.resultDirect,
      this.weightResult,
      this.name,
      this.shortName,
      this.baseIndicatorName,
      this.baseIndicatorShortName,
      this.baseIndicatorDescription,
      this.description,
      this.costPlan,
      this.costFact,
      this.costAccepted,
      this.parentId,
      this.parentName,
      this.moId,
      this.indicatorId,
      this.calculationId,
      this.calculationKey,
      this.measureId,
      this.interpretationId,
      this.liveStart,
      this.liveEnd,
      this.executionStart,
      this.executionEnd,
      this.planPeriodId,
      this.factPeriodId,
      this.weightExpression,
      this.planExpression,
      this.factExpression,
      this.resultExpression,
      this.authorId,
      this.author,
      this.order,
      this.planResponsibleTypeId,
      this.factResponsibleTypeId,
      this.planResponsibleMoId,
      this.factResponsibleMoId,
      this.planResponsibleUser,
      this.factResponsibleUser,
      this.plansCount,
      this.factsCount,
      this.planMissedCount,
      this.factMissedCount,
      this.consumers,
      this.controlled,
      this.markCriterion,
      this.isPayMain,
      this.factDay,
      this.factMonthEnd,
      this.planPeriodicCounting,
      this.planAsLastFact,
      this.showAllFacts,
      this.lastPostTime,
      this.lastPostComment,
      this.lastPostAuthor,
      this.allowEdit,
      this.missedActions,
      this.priority,
      this.repeatPeriod,
      this.created,
      this.isNotify,
      this.notifyDays,
      this.notifyRegular,
      this.taskStatus,
      this.taskStatusFmt,
      this.taskStatusDesc,
      this.taskMark,
      this.sequence,
      this.factCommon,
      this.planCommon,
      this.standardOperationTime,
      this.tags,
      this.files,
      this.childNum,
      this.calculatingPeriod,
      this.precision,
      this.hidden,
      this.usedSupertags,
      this.autoSupertags});

  Task.fromJson(Map<String, dynamic> json) {
    indicatorToMoHstId = json['indicator_to_mo_hst_id'];
    indicatorToMoId = json['indicator_to_mo_id'];
    hierarchicalNum = json['hierarchical_num'];
    sequentialNum = json['sequential_num'];
    baseIndicatorHierarchicalNum = json['base_indicator_hierarchical_num'];
    type = json['type'];
    trafficLight = json['traffic_light'];
    weight = json['weight'];
    plan = json['plan'];
    planPrevious = json['plan_previous'];
    planDefault = json['plan_default'];
    fact = json['fact'];
    factPrevious = json['fact_previous'];
    factAccepted = json['fact_accepted'];
    factPending = json['fact_pending'];
    noFacts = json['no_facts'];
    result = json['result'];
    resultDirect = json['result_direct'];
    weightResult = json['weight_result'];
    name = json['name'];
    shortName = json['short_name'];
    baseIndicatorName = json['base_indicator_name'];
    baseIndicatorShortName = json['base_indicator_short_name'];
    baseIndicatorDescription = json['base_indicator_description'];
    description = json['description'];
    costPlan = json['cost_plan'];
    costFact = json['cost_fact'];
    costAccepted = json['cost_accepted'];
    parentId = json['parent_id'];
    parentName = json['parent_name'];
    moId = json['mo_id'];
    indicatorId = json['indicator_id'];
    calculationId = json['calculation_id'];
    calculationKey = json['calculation_key'];
    measureId = json['measure_id'];
    interpretationId = json['interpretation_id'];
    liveStart = json['live_start'];
    liveEnd = json['live_end'];
    executionStart = json['execution_start'];
    executionEnd = json['execution_end'];
    planPeriodId = json['plan_period_id'];
    factPeriodId = json['fact_period_id'];
    weightExpression = json['weight_expression'];
    planExpression = json['plan_expression'];
    factExpression = json['fact_expression'];
    resultExpression = json['result_expression'];
    authorId = json['author_id'];
    author = json['author'];
    order = json['order'];
    planResponsibleTypeId = json['plan_responsible_type_id'];
    factResponsibleTypeId = json['fact_responsible_type_id'];
    planResponsibleMoId = json['plan_responsible_mo_id'];
    factResponsibleMoId = json['fact_responsible_mo_id'];
    planResponsibleUser = json['plan_responsible_user'];
    factResponsibleUser = json['fact_responsible_user'];
    plansCount = json['plans_count'];
    factsCount = json['facts_count'];
    planMissedCount = json['plan_missed_count'];
    factMissedCount = json['fact_missed_count'];
    consumers = json['consumers'];
    controlled = json['controlled'];
    markCriterion = json['mark_criterion'];
    isPayMain = json['is_pay_main'];
    factDay = json['fact_day'];
    factMonthEnd = json['fact_month_end'];
    planPeriodicCounting = json['plan_periodic_counting'];
    planAsLastFact = json['plan_as_last_fact'];
    showAllFacts = json['show_all_facts'];
    lastPostTime = json['last_post_time'];
    lastPostComment = json['last_post_comment'];
    lastPostAuthor = json['last_post_author'];
    allowEdit = json['allow_edit'];
    priority = json['priority'];
    repeatPeriod = json['repeat_period'];
    created = json['created'];
    isNotify = json['is_notify'];
    notifyDays = json['notify_days'];
    notifyRegular = json['notify_regular'];
    taskStatus = json['task_status'];
    taskStatusFmt = json['task_status_fmt'];
    taskStatusDesc = json['task_status_desc'];
    taskMark = json['task_mark'];
    sequence = json['sequence'];
    factCommon = json['fact_common'];
    planCommon = json['plan_common'];
    standardOperationTime = json['standard_operation_time'];
    childNum = json['child_num'];
    calculatingPeriod = json['calculating_period'];
    precision = json['precision'];
    hidden = json['hidden'];
    usedSupertags = json['used_supertags'];
    autoSupertags = json['auto_supertags'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['indicator_to_mo_hst_id'] = this.indicatorToMoHstId;
    data['indicator_to_mo_id'] = this.indicatorToMoId;
    data['hierarchical_num'] = this.hierarchicalNum;
    data['sequential_num'] = this.sequentialNum;
    data['base_indicator_hierarchical_num'] = this.baseIndicatorHierarchicalNum;
    data['type'] = this.type;
    data['traffic_light'] = this.trafficLight;
    data['weight'] = this.weight;
    data['plan'] = this.plan;
    data['plan_previous'] = this.planPrevious;
    data['plan_default'] = this.planDefault;
    data['fact'] = this.fact;
    data['fact_previous'] = this.factPrevious;
    data['fact_accepted'] = this.factAccepted;
    data['fact_pending'] = this.factPending;
    data['no_facts'] = this.noFacts;
    data['result'] = this.result;
    data['result_direct'] = this.resultDirect;
    data['weight_result'] = this.weightResult;
    data['name'] = this.name;
    data['short_name'] = this.shortName;
    data['base_indicator_name'] = this.baseIndicatorName;
    data['base_indicator_short_name'] = this.baseIndicatorShortName;
    data['base_indicator_description'] = this.baseIndicatorDescription;
    data['description'] = this.description;
    data['cost_plan'] = this.costPlan;
    data['cost_fact'] = this.costFact;
    data['cost_accepted'] = this.costAccepted;
    data['parent_id'] = this.parentId;
    data['parent_name'] = this.parentName;
    data['mo_id'] = this.moId;
    data['indicator_id'] = this.indicatorId;
    data['calculation_id'] = this.calculationId;
    data['calculation_key'] = this.calculationKey;
    data['measure_id'] = this.measureId;
    data['interpretation_id'] = this.interpretationId;
    data['live_start'] = this.liveStart;
    data['live_end'] = this.liveEnd;
    data['execution_start'] = this.executionStart;
    data['execution_end'] = this.executionEnd;
    data['plan_period_id'] = this.planPeriodId;
    data['fact_period_id'] = this.factPeriodId;
    data['weight_expression'] = this.weightExpression;
    data['plan_expression'] = this.planExpression;
    data['fact_expression'] = this.factExpression;
    data['result_expression'] = this.resultExpression;
    data['author_id'] = this.authorId;
    data['author'] = this.author;
    data['order'] = this.order;
    data['plan_responsible_type_id'] = this.planResponsibleTypeId;
    data['fact_responsible_type_id'] = this.factResponsibleTypeId;
    data['plan_responsible_mo_id'] = this.planResponsibleMoId;
    data['fact_responsible_mo_id'] = this.factResponsibleMoId;
    data['plan_responsible_user'] = this.planResponsibleUser;
    data['fact_responsible_user'] = this.factResponsibleUser;
    data['plans_count'] = this.plansCount;
    data['facts_count'] = this.factsCount;
    data['plan_missed_count'] = this.planMissedCount;
    data['fact_missed_count'] = this.factMissedCount;
    data['consumers'] = this.consumers;
    data['controlled'] = this.controlled;
    data['mark_criterion'] = this.markCriterion;
    data['is_pay_main'] = this.isPayMain;
    data['fact_day'] = this.factDay;
    data['fact_month_end'] = this.factMonthEnd;
    data['plan_periodic_counting'] = this.planPeriodicCounting;
    data['plan_as_last_fact'] = this.planAsLastFact;
    data['show_all_facts'] = this.showAllFacts;
    data['last_post_time'] = this.lastPostTime;
    data['last_post_comment'] = this.lastPostComment;
    data['last_post_author'] = this.lastPostAuthor;
    data['allow_edit'] = this.allowEdit;
    data['priority'] = this.priority;
    data['repeat_period'] = this.repeatPeriod;
    data['created'] = this.created;
    data['is_notify'] = this.isNotify;
    data['notify_days'] = this.notifyDays;
    data['notify_regular'] = this.notifyRegular;
    data['task_status'] = this.taskStatus;
    data['task_status_fmt'] = this.taskStatusFmt;
    data['task_status_desc'] = this.taskStatusDesc;
    data['task_mark'] = this.taskMark;
    data['sequence'] = this.sequence;
    data['fact_common'] = this.factCommon;
    data['plan_common'] = this.planCommon;
    data['standard_operation_time'] = this.standardOperationTime;
    data['child_num'] = this.childNum;
    data['calculating_period'] = this.calculatingPeriod;
    data['precision'] = this.precision;
    data['hidden'] = this.hidden;
    data['used_supertags'] = this.usedSupertags;
    data['auto_supertags'] = this.autoSupertags;
    return data;
  }
}
