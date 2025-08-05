@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for Search_DTLS'
define view entity ZI_FIX_SEARCH_DTLS
  as select from zfix_search_dtls
  association to parent ZI_FIX_SEARCH_MD as _SearchMasterData
    on $projection.SearchID = _SearchMasterData.SearchID 
{
    key search_id as SearchID,
    key details_id as DetailsID,
    response_data as ResponseData,
    created_by as CreatedBy,
    created_at as CreatedAt,
        /* Associations */
    _SearchMasterData // Make association public
}
