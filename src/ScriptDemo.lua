function AnimationParse(strinfo)
   local tbdecode=decode(strinfo);
  
  local xpos=tbdecode["tx"]+0;
  local scrt={};
  
  if xpos>240 then
    scrt["cid"]="2";
    scrt["script"]='["ScaleTo(1||1.2)","ScaleTo(1||1)",]';
  else
    scrt["cid"]="1";
    scrt["script"]='["ScaleTo(1||1.2)","ScaleTo(1||1)",]';
  end
  
  return encode(scrt);
end
