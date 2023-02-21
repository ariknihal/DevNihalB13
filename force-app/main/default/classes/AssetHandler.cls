public class AssetHandler {
    public static void AssetHandlerUpdate(list<Asset>AssetTriggerNew, List<Asset>assetTriggerOld, map<Id,Asset>AssetTriggerNewMap,map<Id,Asset>AssetTriggerOldMap) {
        for( asset eachAsset : AssetTriggerNew){
            if(eachAsset.Status == 'Shipped'){
                eachAsset.Description = 'Asset is shipped';
            }else if(eachAsset.Status == 'Installed'){
                eachAsset.Description = 'Asset is installed';

        } else if(eachAsset.Status != AssetTriggerOldMap.get(eachAsset.Id).Status){
            eachAsset.Description.addError('should not change the description');
        }

    }
}
}