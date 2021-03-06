require "dothoop/version"
require 'dothoop/configuration'
require 'resource_kit'
require 'kartograph'

module Dothoop
  autoload :Client, 'dothoop/client'

  autoload :AccountMapping, 'dothoop/mappings/account_mapping'
  autoload :ContactMapping, 'dothoop/mappings/contact_mapping'
  autoload :ContractDatesMapping, 'dothoop/mappings/contract_dates_mapping'
  autoload :ContractInfoMapping, 'dothoop/mappings/contract_info_mapping'
  autoload :FinancialsMapping, 'dothoop/mappings/financials_mapping'
  autoload :GeographicDescriptionMapping, 'dothoop/mappings/geographic_description_mapping'
  autoload :ListingInformationMapping, 'dothoop/mappings/listing_information_mapping'
  autoload :LoopDetailMapping, 'dothoop/mappings/loop_detail_mapping'
  autoload :LoopItMapping, 'dothoop/mappings/loop_it_mapping'
  autoload :LoopMapping, 'dothoop/mappings/loop_mapping'
  autoload :LoopTaskListItemMapping, 'dothoop/mappings/loop_task_list_item_mapping'
  autoload :LoopTaskListMapping, 'dothoop/mappings/loop_task_list_mapping'
  autoload :LoopTemplateMapping, 'dothoop/mappings/loop_template_mapping'
  autoload :OfferDatesMapping, 'dothoop/mappings/offer_dates_mapping'
  autoload :ParticipantMapping, 'dothoop/mappings/participant_mapping'
  autoload :ProfileMapping, 'dothoop/mappings/profile_mapping'
  autoload :PropertyAddressMapping, 'dothoop/mappings/property_address_mapping'
  autoload :PropertyMapping, 'dothoop/mappings/property_mapping'
  autoload :ReferralMapping, 'dothoop/mappings/referral_mapping'

  autoload :BaseModel, 'dothoop/models/base_model'
  autoload :Account, 'dothoop/models/account'
  autoload :Contact, 'dothoop/models/contact'
  autoload :ContractDates, 'dothoop/models/contract_dates'
  autoload :ContractInfo, 'dothoop/models/contract_info'
  autoload :Financials, 'dothoop/models/financials'
  autoload :GeographicDescription, 'dothoop/models/geographic_description'
  autoload :ListingInformation, 'dothoop/models/listing_information'
  autoload :LoopDetail, 'dothoop/models/loop_detail'
  autoload :LoopIt, 'dothoop/models/loop_it'
  autoload :LoopTaskListItem, 'dothoop/models/loop_task_list_item'
  autoload :LoopTemplate, 'dothoop/models/loop_template'
  autoload :Loop, 'dothoop/models/loop'
  autoload :OfferDates, 'dothoop/models/offer_dates'
  autoload :Participant, 'dothoop/models/participant'
  autoload :Profile, 'dothoop/models/profile'
  autoload :PropertyAddress, 'dothoop/models/property_address'
  autoload :Property, 'dothoop/models/property'
  autoload :Referral, 'dothoop/models/referral'
  autoload :TaskList, 'dothoop/models/task_list'

  autoload :MetaInformation, 'dothoop/models/meta_information'

  autoload :AccountResource, 'dothoop/resources/account_resource'
  autoload :ContactResource, 'dothoop/resources/contact_resource'
  autoload :LoopDetailResource, 'dothoop/resources/loop_detail_resource'
  autoload :LoopItResource, 'dothoop/resources/loop_it_resource'
  autoload :LoopParticipantResource, 'dothoop/resources/loop_participant_resource'
  autoload :LoopResource, 'dothoop/resources/loop_resource'
  autoload :LoopTaskListItemResource, 'dothoop/resources/loop_task_list_item_resource'
  autoload :LoopTaskListResource, 'dothoop/resources/loop_task_list_resource'
  autoload :LoopTemplateResource, 'dothoop/resources/loop_template_resource'
  autoload :ProfileResource, 'dothoop/resources/profile_resource'

  autoload :ErrorHandlingResourcable, 'dothoop/error_handling_resourcable'
  autoload :PaginatedResource, 'dothoop/paginated_resource'

  autoload :ErrorMapping, 'dothoop/mappings/error_mapping'
  Error = Class.new(StandardError)
  UnauthorizedError = Class.new(Dothoop::Error)
  ForbiddenError = Class.new(Dothoop::Error)
  NotFoundError = Class.new(Dothoop::Error)
  UnprocessableEntityError = Class.new(Dothoop::Error)
  TooManyRequestsError = Class.new(Dothoop::Error)
end
