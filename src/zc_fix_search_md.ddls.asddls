// ZC_FIX_SEARCH_MD - Root Entity Projection View
@EndUserText.label: 'Projection View for Search MD'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
@ObjectModel.semanticKey: ['SearchID']
define root view entity ZC_FIX_SEARCH_MD
  provider contract transactional_query
  as projection on ZI_FIX_SEARCH_MD
{
  key SearchID,
      @Search.defaultSearchElement: true
      Prompt,
      CompanyName,
      Country,
      EmployeeCount,
      MainIndustry,
      FinancialCondRating,
      CreatedBy,
      CreatedByName,
      CreatedAt,
      CreatedBp,
      CreatedBpId,
      ChangedBy,
      ChangedByName,
      ChangedAt,
      
      /* Associations */
      _SearchDetails : redirected to composition child ZC_FIX_SEARCH_DTLS
}
