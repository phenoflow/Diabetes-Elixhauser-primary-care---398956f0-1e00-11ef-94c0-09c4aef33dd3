cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  noninsulindependent-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: noninsulindependent-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: noninsulindependent-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  antidiabetic-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: antidiabetic-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-control---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-control---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: antidiabetic-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-mellitus---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-mellitus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-control---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-diabetologist---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-diabetologist---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-mellitus---primary/output
  clinical-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: clinical-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-diabetologist---primary/output
  pancreatic-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: pancreatic-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: clinical-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-wellbeing---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-wellbeing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: pancreatic-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  hypoglycaemic-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: hypoglycaemic-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-wellbeing---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-complication---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-complication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: hypoglycaemic-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-malnutritionrelated---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-malnutritionrelated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-complication---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-refer---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-refer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-malnutritionrelated---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-screener---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-screener---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-refer---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-advice---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-advice---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-screener---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-youth---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-youth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-advice---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-retinop---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-retinop---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-youth---primary/output
  ketoacidotic-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: ketoacidotic-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-retinop---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-record---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-record---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ketoacidotic-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-check---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-check---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-record---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-review---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-review---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-check---primary/output
  dominant-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: dominant-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-review---primary/output
  digital-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: digital-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: dominant-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-agreed---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-agreed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: digital-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-compliance---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-compliance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-agreed---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-followup---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-followup---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-compliance---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-monitor---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-monitor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-followup---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-attended---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-attended---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-monitor---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-discharged---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-discharged---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-attended---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-default---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-default---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-discharged---primary/output
  steroid-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: steroid-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-default---primary/output
  juvenile-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: juvenile-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: steroid-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-satisfaction---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-satisfaction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: juvenile-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-invite---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-invite---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-satisfaction---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-offered---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-offered---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-invite---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-ketoacidosis---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-ketoacidosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-offered---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-preconception---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-preconception---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-ketoacidosis---primary/output
  multidisciplinary-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: multidisciplinary-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-preconception---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-remission---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-remission---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: multidisciplinary-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  nonketotic-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: nonketotic-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-remission---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-mention---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-mention---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: nonketotic-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  patient-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: patient-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-mention---primary/output
  moderate-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: moderate-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: patient-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  unsuitable-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: unsuitable-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: moderate-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-program---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-program---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: unsuitable-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-dissent---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-dissent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-program---primary/output
  under-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: under-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-dissent---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-assessment---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-assessment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: under-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-selfmanagement---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-selfmanagement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-assessment---primary/output
  dietary-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: dietary-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-selfmanagement---primary/output
  diabetes---primary:
    run: diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: dietary-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-completed---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-completed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: diabetes---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-maturity---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-maturity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-completed---primary/output
  unstable-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: unstable-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-maturity---primary/output
  annual-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: annual-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: unstable-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-counselling---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-counselling---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: annual-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-examination---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-examination---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-counselling---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-service---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-service---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-examination---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-increased---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-increased---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-service---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-given---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-given---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-increased---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-provision---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-provision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-given---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-specified---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-provision---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-indicated---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-indicated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-specified---primary/output
  secondary-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: secondary-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-indicated---primary/output
  latent-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: latent-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: secondary-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  nephropathy-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: nephropathy-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: latent-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-shared---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-shared---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: nephropathy-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-pregnancy---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-shared---primary/output
  hyperosmolar-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: hyperosmolar-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-pregnancy---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-driving---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-driving---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: hyperosmolar-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-excretion---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-excretion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-driving---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-education---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-education---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-excretion---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-audit---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-audit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-education---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-declined---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-declined---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-audit---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-state---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-state---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-declined---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-consent---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-consent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-state---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-quality---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-quality---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-consent---primary/output
  adult-diabetes-uncomplicated-elixhauser-primary-care---primary:
    run: adult-diabetes-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-quality---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-preexisting---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-preexisting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: adult-diabetes-uncomplicated-elixhauser-primary-care---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-manifestation---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-manifestation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-preexisting---primary/output
  diabetes-uncomplicated-elixhauser-primary-care-register---primary:
    run: diabetes-uncomplicated-elixhauser-primary-care-register---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-manifestation---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: diabetes-uncomplicated-elixhauser-primary-care-register---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
