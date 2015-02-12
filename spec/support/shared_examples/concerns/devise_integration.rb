RSpec.shared_examples 'DeviseIntegration' do
  it 'includes Devise modules defined in DeviseIntegration::DEVISE_MODULES' do
    loaded_devise_modules = described_class
      .included_modules
      .select { |mod| mod.to_s.starts_with?('Devise::Models') }
      .map { |klass| klass.to_s.underscore.split('/').last.to_sym }

    expect(loaded_devise_modules.to_set).to eq(
      DeviseIntegration::DEVISE_MODULES.to_set
    )
  end

  it 'configures Devise with Omniauth providers in DeviseIntegration::DEVISE_OMNIAUTH_PROVIDERS' do
    expect(described_class).to respond_to(:omniauth_providers)

    expect(described_class.omniauth_providers.to_set).to eq(
      DeviseIntegration::DEVISE_OMNIAUTH_PROVIDERS.to_set
    )
  end
end
