# data-platform-station-sql 

data-platform-station-sql は、データ連携基盤において、鉄道駅データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-station-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-station-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-station-sql-header-data.sql（データ連携基盤 鉄道駅 - ヘッダデータ）
* data-platform-station-sql-header-doc-data.sql（データ連携基盤 鉄道駅 - ヘッダ文書データ）
* data-platform-station-sql-railway-line-data.sql（データ連携基盤 鉄道駅 - 鉄道路線データ）
* data-platform-station-sql-partner-data.sql（データ連携基盤 鉄道駅 - パートナデータ）
* data-platform-station-sql-address-data.sql（データ連携基盤 鉄道駅 - 住所データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
