class CsvExportsController < ApplicationController

    def export
        # データを取得するロジックを実装
        @data = Megane.all
    
        respond_to do |format|
          format.csv do
            # CSVファイルの生成と書き込み
            csv_data = CSV.generate do |csv|
              csv << ['Title', 'Name', 'Content'] # CSVのヘッダー行
              @data.each do |record|
                csv << [record.title, record.name, record.content] # データ行
              end
            end
    
            # ファイル名を指定してCSVデータを送信
            send_data csv_data, filename: "data_export_#{Time.now.strftime('%Y%m%d_%H%M%S')}.csv"
          end
        end
      end
end
