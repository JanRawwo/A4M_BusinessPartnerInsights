@EndUserText.label: 'Projection View for Search Details'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_FIX_SEARCH_DTLS
  as projection on ZI_FIX_SEARCH_DTLS
{
  key SearchID,
  key DetailsID,
      ResponseData,
      CreatedBy,
      CreatedAt,
      
      /* Associations */
      _SearchMasterData : redirected to parent ZC_FIX_SEARCH_MD
}
