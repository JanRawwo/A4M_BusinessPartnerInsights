@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for Search_MD'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_FIX_SEARCH_MD
 as select from zfix_search_md
  composition [0..*] of ZI_FIX_SEARCH_DTLS as _SearchDetails
  association [0..1] to P_USER_ADDR as _CreatedUser on $projection.CreatedBy = _CreatedUser.bname
  association [0..1] to P_USER_ADDR as _ChangedUser on $projection.ChangedBy = _ChangedUser.bname
{
    key search_id as SearchID,
    prompt as Prompt,
    company_name as CompanyName,
    country as Country,
    employee_count as EmployeeCount,
    main_industry as MainIndustry,
    financial_cond_rating as FinancialCondRating,
    @Semantics.user.createdBy: true
    created_by as CreatedBy,
    concat_with_space( _CreatedUser.name_first, _CreatedUser.name_last, 1) as CreatedByName,
    @Semantics.systemDateTime.createdAt: true
    created_at as CreatedAt,
    created_bp as CreatedBp,
    created_bp_id as CreatedBpId,
    @Semantics.user.lastChangedBy: true
    changed_by as ChangedBy,
    concat_with_space( _ChangedUser.name_first, _ChangedUser.name_last, 1) as ChangedByName,
    @Semantics.systemDateTime.lastChangedAt: true
    changed_at as ChangedAt,
    
    /* Associations */
    _SearchDetails
    
}
