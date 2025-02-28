class Hook { // lowest -> highest
  const Hook({this.tag, this.order});
  final String? tag;
  final int? order;
}

class Before extends Hook {
  const Before({super.tag, super.order});
}

class After extends Hook {
  const After({super.tag, super.order});
}

class BeforeStep extends Hook {
  const BeforeStep({super.tag, super.order});
}

class AfterStep extends Hook {
  const AfterStep({super.tag, super.order});
}

// only available on given instances
class BeforeRun {

  const BeforeRun({this.order});
  final int? order;
}

// only available on given instances
class AfterRun {

  const AfterRun({this.order});
  final int? order;
}

class StepDef {

  const StepDef(this.verbiage);
  final String verbiage;
}

class Given extends StepDef {
  const Given(super.verbiage);
}

class And extends StepDef {
  const And(super.verbiage);
}

class But extends StepDef {
  const But(super.verbiage);
}

class When extends StepDef {
  const When(super.verbiage);
}

class Then extends StepDef {
  const Then(super.verbiage);
}
