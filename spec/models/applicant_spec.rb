require 'rails_helper' 

RSpec.describe UserPosition, type: :model do
  describe 'verifica_idade' do
    it 'retorna "Menor" para age menor que 13' do
      applicant= Applicant.new(brithday: "25/10/2005")
      result= applicant.verifica_idade
      expect(result).to eq('aprendiz')
    end
  end
end
