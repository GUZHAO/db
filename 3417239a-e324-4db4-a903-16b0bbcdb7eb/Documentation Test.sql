SELECT DISTINCT
  t1.DOC_TYP_CD,
  t1.DOC_TYP_DESCR
  FROM DART_ODS.ODS_EDW_ENC_DOC_INFO t1

SELECT DISTINCT
  t1.ENC_TYP_DESCR,
  COUNT(t1.ENC_ID_CSN) AS CNT
  FROM DART_ODS.MV_COBA_PT_ENC t1
GROUP BY t1.ENC_TYP_DESCR
ORDER BY CNT DESC
;