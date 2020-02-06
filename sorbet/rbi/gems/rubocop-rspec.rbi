# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rubocop-rspec/all/rubocop-rspec.rbi
#
# rubocop-rspec-1.37.1
module RuboCop
end
module RuboCop::RSpec
end
module RuboCop::RSpec::Version
end
module RuboCop::RSpec::Inject
  def self.defaults!; end
end
module RuboCop::RSpec::Node
  def recursive_literal_or_const?; end
end
module RuboCop::RSpec::TopLevelDescribe
  def describe_statement_children(node); end
  def on_send(node); end
  def root_node; end
  def single_top_level_describe?; end
  def top_level_describe?(node); end
  def top_level_nodes; end
  extend RuboCop::NodePattern::Macros
end
class RuboCop::RSpec::Wording
  def append_suffix(word, suffix); end
  def ignored_word?(word); end
  def ignores; end
  def initialize(text, ignore:, replace:); end
  def remove_should_and_pluralize; end
  def replace_prefix(pattern, replacement); end
  def replacements; end
  def rewrite; end
  def substitute(word); end
  def text; end
  def uppercase?(word); end
end
module RuboCop::RSpec::Util
  def one(array); end
end
class RuboCop::RSpec::Util::SizeError < IndexError
end
module RuboCop::RSpec::Language
end
class RuboCop::RSpec::Language::SelectorSet
  def +(other); end
  def ==(other); end
  def block_pattern; end
  def include?(selector); end
  def initialize(selectors); end
  def node_pattern; end
  def node_pattern_union; end
  def selectors; end
  def send_pattern; end
end
module RuboCop::RSpec::Language::ExampleGroups
end
module RuboCop::RSpec::Language::SharedGroups
end
module RuboCop::RSpec::Language::Includes
end
module RuboCop::RSpec::Language::Examples
end
module RuboCop::RSpec::Language::Hooks
end
module RuboCop::RSpec::Language::Helpers
end
module RuboCop::RSpec::Language::Subject
end
module RuboCop::RSpec::Language::Expectations
end
module RuboCop::RSpec::Language::Runners
end
module RuboCop::RSpec::Language::NodePattern
  def example?(node = nil); end
  def example_group?(node = nil); end
  def example_group_with_body?(node = nil); end
  def hook?(node = nil); end
  def let?(node = nil); end
  def subject?(node = nil); end
  extend RuboCop::NodePattern::Macros
end
class RuboCop::RSpec::Concept
  def ==(other); end
  def eql?(other); end
  def hash; end
  def initialize(node); end
  def node; end
  def to_node; end
  extend RuboCop::NodePattern::Macros
  include RuboCop::RSpec::Language
  include RuboCop::RSpec::Language::NodePattern
end
class RuboCop::RSpec::ExampleGroup < RuboCop::RSpec::Concept
  def examples; end
  def examples_in_scope(node, &blk); end
  def find_examples(node); end
  def find_hooks(node); end
  def find_subjects(node); end
  def hooks; end
  def hooks_in_scope(node); end
  def scope_change?(node = nil); end
  def subjects; end
  def subjects_in_scope(node); end
end
class RuboCop::RSpec::Example < RuboCop::RSpec::Concept
  def definition; end
  def doc_string; end
  def extract_doc_string(node = nil); end
  def extract_implementation(node = nil); end
  def extract_metadata(node = nil); end
  def implementation; end
  def metadata; end
end
class RuboCop::RSpec::Hook < RuboCop::RSpec::Concept
  def example?; end
  def knowable_scope?; end
  def name; end
  def scope; end
  def scope_argument; end
  def scope_name; end
  def valid_scope?; end
end
module RuboCop::Cop
end
class RuboCop::Cop::WorkaroundCop
  def add_offense(node, location: nil, message: nil, severity: nil); end
  def annotate(message); end
  def config; end
  def config_to_allow_offenses; end
  def config_to_allow_offenses=(hash); end
  def cop_config; end
  def cop_name; end
  def correct(node); end
  def corrections; end
  def custom_severity; end
  def default_severity; end
  def disable_uncorrectable(node); end
  def duplicate_location?(location); end
  def enabled_line?(line_number); end
  def excluded_file?(file); end
  def file_name_matches_any?(file, parameter, default_result); end
  def find_location(node, loc); end
  def initialize(config = nil, options = nil); end
  def join_force?(_force_class); end
  def message(_node = nil); end
  def name; end
  def offenses; end
  def parse(source, path = nil); end
  def processed_source; end
  def processed_source=(arg0); end
  def reason_to_not_correct(node); end
  def relevant_file?(file); end
  def self.<(other); end
  def target_rails_version; end
  def target_ruby_version; end
end
module RuboCop::Cop::RSpec
end
class RuboCop::Cop::RSpec::Cop < RuboCop::Cop::WorkaroundCop
  def all_cops_config; end
  def relevant_file?(file); end
  def relevant_rubocop_rspec_file?(file); end
  def rspec_pattern; end
  def rspec_pattern_config; end
  def rspec_pattern_config?; end
  def self.inherited(subclass); end
  include RuboCop::RSpec::Language
  include RuboCop::RSpec::Language::NodePattern
end
class RuboCop::RSpec::AlignLetBrace
  def adjacent_let_chunks; end
  def indent_for(node); end
  def initialize(root, token); end
  def let_group_for(let); end
  def let_token(node); end
  def offending_tokens; end
  def root; end
  def single_line_lets; end
  def target_column_for(let); end
  def token; end
  include RuboCop::RSpec::Language::NodePattern
end
module RuboCop::RSpec::FactoryBot
  def self.attribute_defining_methods; end
  def self.reserved_methods; end
end
module RuboCop::RSpec::FinalEndLocation
  def final_end_location(start_node); end
end
module RuboCop::RSpec::BlankLineSeparation
  def autocorrect(node); end
  def last_child?(node); end
  def missing_separating_line(node); end
  def offending_loc(last_line); end
  include RuboCop::Cop::RangeHelp
  include RuboCop::RSpec::FinalEndLocation
end
module RuboCop::Cop::RSpec::Capybara
end
class RuboCop::Cop::RSpec::Capybara::CurrentPathExpectation < RuboCop::Cop::RSpec::Cop
  def add_ignore_query_options(corrector, node); end
  def as_is_matcher(node = nil); end
  def autocorrect(node); end
  def convert_regexp_str_to_literal(corrector, matcher_node, regexp_str); end
  def expectation_set_on_current_path(node = nil); end
  def on_send(node); end
  def regexp_str_matcher(node = nil); end
  def rewrite_expectation(corrector, node, to_symbol, matcher_node); end
end
class RuboCop::Cop::RSpec::Capybara::FeatureMethods < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def enabled?(method_name); end
  def enabled_methods; end
  def feature_method(node = nil); end
  def inside_spec?(node); end
  def on_block(node); end
  def root_node?(node); end
  def root_with_siblings?(node); end
  def spec?(node = nil); end
end
module RuboCop::Cop::RSpec::FactoryBot
end
class RuboCop::Cop::RSpec::FactoryBot::AttributeDefinedStatically < RuboCop::Cop::RSpec::Cop
  def association?(node = nil); end
  def attribute_defining_method?(method_name); end
  def autocorrect(node); end
  def autocorrect_replacing_parens(node); end
  def autocorrect_without_parens(node); end
  def braces(node); end
  def factory_attributes(node0); end
  def offensive_receiver?(receiver, node); end
  def on_block(node); end
  def proc?(attribute); end
  def receiver_matches_first_block_argument?(receiver, node); end
  def reserved_method?(method_name); end
  def value_hash_without_braces?(node); end
  def value_matcher(node = nil); end
end
class RuboCop::Cop::RSpec::FactoryBot::CreateList < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def contains_only_factory?(node); end
  def factory_call(node = nil); end
  def factory_list_call(node = nil); end
  def n_times_block_without_arg?(node = nil); end
  def on_block(node); end
  def on_send(node); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::FactoryBot::CreateList::Corrector
  def build_options_string(options); end
  def format_method_call(node, method, arguments); end
  def format_receiver(receiver); end
end
class RuboCop::Cop::RSpec::FactoryBot::CreateList::TimesCorrector < RuboCop::Cop::RSpec::FactoryBot::CreateList::Corrector
  def call(corrector); end
  def generate_n_times_block(node); end
  def initialize(node); end
  def node; end
end
class RuboCop::Cop::RSpec::FactoryBot::CreateList::CreateListCorrector < RuboCop::Cop::RSpec::FactoryBot::CreateList::Corrector
  def build_arguments(node, count); end
  def call(corrector); end
  def call_replacement(node); end
  def call_with_block_replacement(node); end
  def format_block(node); end
  def format_multiline_block(node); end
  def format_singeline_block(node); end
  def initialize(node); end
  def node; end
end
class RuboCop::Cop::RSpec::FactoryBot::FactoryClassName < RuboCop::Cop::RSpec::Cop
  def allowed?(const_name); end
  def autocorrect(node); end
  def class_name(node = nil); end
  def on_send(node); end
end
class RuboCop::Cop::RSpec::AlignLeftLetBrace < RuboCop::Cop::RSpec::Cop
  def autocorrect(let); end
  def investigate(_processed_source); end
  def self.autocorrect_incompatible_with; end
  def token_aligner; end
end
class RuboCop::Cop::RSpec::AlignRightLetBrace < RuboCop::Cop::RSpec::Cop
  def autocorrect(let); end
  def investigate(_processed_source); end
  def self.autocorrect_incompatible_with; end
  def token_aligner; end
end
class RuboCop::Cop::RSpec::AnyInstance < RuboCop::Cop::RSpec::Cop
  def disallowed_stub(node = nil); end
  def on_send(node); end
end
class RuboCop::Cop::RSpec::AroundBlock < RuboCop::Cop::RSpec::Cop
  def add_no_arg_offense(node); end
  def check_for_unused_proxy(block, proxy); end
  def find_arg_usage(node0); end
  def hook(node = nil); end
  def on_block(node); end
end
class RuboCop::Cop::RSpec::Be < RuboCop::Cop::RSpec::Cop
  def be_without_args(node = nil); end
  def on_send(node); end
end
class RuboCop::Cop::RSpec::BeEql < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def eql_type_with_identity(node = nil); end
  def on_send(node); end
end
class RuboCop::Cop::RSpec::BeforeAfterAll < RuboCop::Cop::RSpec::Cop
  def before_or_after_all(node = nil); end
  def on_send(node); end
end
class RuboCop::Cop::RSpec::ContextMethod < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def context_method(node = nil); end
  def method_name?(description); end
  def on_block(node); end
end
class RuboCop::Cop::RSpec::ContextWording < RuboCop::Cop::RSpec::Cop
  def bad_prefix?(description); end
  def context_wording(node = nil); end
  def joined_prefixes; end
  def on_block(node); end
  def prefixes; end
end
class RuboCop::Cop::RSpec::DescribeClass < RuboCop::Cop::RSpec::Cop
  def describe_with_rails_metadata?(node = nil); end
  def on_top_level_describe(node, args); end
  def rails_metadata?(node = nil); end
  def shared_group?(node = nil); end
  def valid_describe?(node = nil); end
  include RuboCop::RSpec::TopLevelDescribe
end
class RuboCop::Cop::RSpec::DescribeMethod < RuboCop::Cop::RSpec::Cop
  def on_top_level_describe(_node, arg1); end
  include RuboCop::RSpec::TopLevelDescribe
  include RuboCop::RSpec::Util
end
class RuboCop::Cop::RSpec::DescribeSymbol < RuboCop::Cop::RSpec::Cop
  def describe_symbol?(node = nil); end
  def on_send(node); end
end
class RuboCop::Cop::RSpec::DescribedClass < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def collapse_namespace(namespace, const); end
  def common_instance_exec_closure?(node = nil); end
  def const_name(node); end
  def contains_described_class?(node0); end
  def described_constant(node = nil); end
  def find_usage(node, &block); end
  def full_const_name(node); end
  def message(offense); end
  def namespace(node); end
  def offensive?(node); end
  def offensive_described_class?(node); end
  def on_block(node); end
  def rspec_block?(node = nil); end
  def scope_change?(node); end
  def scope_changing_syntax?(node = nil); end
  def skip_blocks?; end
  def skippable_block?(node); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::DescribedClassModuleWrapping < RuboCop::Cop::RSpec::Cop
  def find_rspec_blocks(node0); end
  def on_module(node); end
end
class RuboCop::Cop::RSpec::Dialect < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def message(node); end
  def on_send(node); end
  def rspec_method?(node = nil); end
  include RuboCop::Cop::MethodPreference
end
class RuboCop::Cop::RSpec::EmptyExampleGroup < RuboCop::Cop::RSpec::Cop
  def contains_example?(node0); end
  def custom_include?(method_name); end
  def custom_include_methods; end
  def on_block(node); end
end
class RuboCop::Cop::RSpec::EmptyLineAfterExample < RuboCop::Cop::RSpec::Cop
  def allow_consecutive_one_liners?; end
  def allowed_one_liner?(node); end
  def consecutive_one_liner?(node); end
  def next_one_line_example?(node); end
  def next_sibling(node); end
  def on_block(node); end
  include RuboCop::RSpec::BlankLineSeparation
end
class RuboCop::Cop::RSpec::EmptyLineAfterExampleGroup < RuboCop::Cop::RSpec::Cop
  def on_block(node); end
  include RuboCop::RSpec::BlankLineSeparation
end
class RuboCop::Cop::RSpec::EmptyLineAfterFinalLet < RuboCop::Cop::RSpec::Cop
  def on_block(node); end
  include RuboCop::RSpec::BlankLineSeparation
end
class RuboCop::Cop::RSpec::EmptyLineAfterHook < RuboCop::Cop::RSpec::Cop
  def on_block(node); end
  include RuboCop::RSpec::BlankLineSeparation
end
class RuboCop::Cop::RSpec::EmptyLineAfterSubject < RuboCop::Cop::RSpec::Cop
  def in_spec_block?(node); end
  def on_block(node); end
  include RuboCop::RSpec::BlankLineSeparation
end
class RuboCop::Cop::RSpec::ExampleLength < RuboCop::Cop::RSpec::Cop
  def code_length(node); end
  def message(length); end
  def on_block(node); end
  include RuboCop::Cop::CodeLength
end
class RuboCop::Cop::RSpec::ExampleWithoutDescription < RuboCop::Cop::RSpec::Cop
  def check_example_without_description(node); end
  def disallow_empty_description?(node); end
  def example_description(node = nil); end
  def on_block(node); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::ExampleWording < RuboCop::Cop::RSpec::Cop
  def add_wording_offense(node, message); end
  def autocorrect(node); end
  def custom_transform; end
  def docstring(node); end
  def ignored_words; end
  def it_description(node = nil); end
  def on_block(node); end
  def replacement_text(node); end
  def text(node); end
end
class RuboCop::Cop::RSpec::ExpectActual < RuboCop::Cop::RSpec::Cop
  def complex_literal?(node); end
  def expect_literal(node = nil); end
  def literal?(node); end
  def on_send(node); end
  def simple_literal?(node); end
end
class RuboCop::Cop::RSpec::ExpectChange < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def autocorrect_block_to_method_call(node); end
  def autocorrect_method_call_to_block(node); end
  def expect_change_with_arguments(node = nil); end
  def expect_change_with_block(node = nil); end
  def on_block(node); end
  def on_send(node); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::ExpectInHook < RuboCop::Cop::RSpec::Cop
  def expectation(node0); end
  def message(expect, hook); end
  def on_block(node); end
end
class RuboCop::Cop::RSpec::ExpectOutput < RuboCop::Cop::RSpec::Cop
  def inside_example_scope?(node); end
  def on_gvasgn(node); end
end
class RuboCop::Cop::RSpec::FilePath < RuboCop::Cop::RSpec::Cop
  def camel_to_snake_case(string); end
  def const_described?(node0); end
  def custom_transform; end
  def expected_path(constant); end
  def filename_ends_with?(glob); end
  def glob_for(arg0); end
  def ignore_methods?; end
  def name_glob(name); end
  def on_top_level_describe(node, args); end
  def relevant_rubocop_rspec_file?(_file); end
  def routing_metadata?(node0); end
  def routing_spec?(args); end
  include RuboCop::RSpec::TopLevelDescribe
end
class RuboCop::Cop::RSpec::Focus < RuboCop::Cop::RSpec::Cop
  def focus_metadata(node, &block); end
  def focused_block?(node = nil); end
  def metadata(node = nil); end
  def on_send(node); end
end
class RuboCop::Cop::RSpec::HookArgument < RuboCop::Cop::RSpec::Cop
  def argument_range(send_node); end
  def autocorrect(node); end
  def check_implicit(method_send); end
  def explicit_message(scope); end
  def hook(node, &block); end
  def implicit_style?; end
  def on_block(node); end
  def scoped_hook(node = nil); end
  def unscoped_hook(node = nil); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::HooksBeforeExamples < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def check_hooks(node); end
  def example_or_group?(node = nil); end
  def find_first_example(node); end
  def multiline_block?(block); end
  def node_range(node); end
  def node_range_with_surrounding_space(node); end
  def on_block(node); end
  def source(node); end
  include RuboCop::Cop::RangeHelp
  include RuboCop::RSpec::FinalEndLocation
end
class RuboCop::Cop::RSpec::ImplicitBlockExpectation < RuboCop::Cop::RSpec::Cop
  def find_subject(block_node); end
  def implicit_expect(node = nil); end
  def lambda?(node = nil); end
  def lambda_subject?(node = nil); end
  def multi_statement_example_group?(node); end
  def nearest_subject(node); end
  def on_send(node); end
end
class RuboCop::Cop::RSpec::ImplicitExpect < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def implicit_expect(node = nil); end
  def is_expected_range(source_map); end
  def offending_expect(node); end
  def offense_message(offending_source); end
  def on_send(node); end
  def replacement_source(offending_source); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::ImplicitSubject < RuboCop::Cop::RSpec::Cop
  def allowed_by_style?(example); end
  def autocorrect(node); end
  def implicit_subject?(node = nil); end
  def on_send(node); end
  def valid_usage?(node); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::InstanceSpy < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def have_received_usage(node0); end
  def null_double(node0); end
  def on_block(node); end
end
class RuboCop::Cop::RSpec::InstanceVariable < RuboCop::Cop::RSpec::Cop
  def assignment_only?; end
  def dynamic_class?(node = nil); end
  def inside_dynamic_class?(node); end
  def ivar_assigned?(node0, param1); end
  def ivar_usage(node0); end
  def on_block(node); end
  def spec_group?(node = nil); end
end
class RuboCop::Cop::RSpec::InvalidPredicateMatcher < RuboCop::Cop::RSpec::Cop
  def invalid_predicate_matcher?(node = nil); end
  def message(predicate); end
  def on_send(node); end
  def predicate?(name); end
end
class RuboCop::Cop::RSpec::ItBehavesLike < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def example_inclusion_offense(node = nil, param1); end
  def message(_node); end
  def on_send(node); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::IteratedExpectation < RuboCop::Cop::RSpec::Cop
  def each?(node = nil); end
  def expectation?(node = nil, param1); end
  def on_block(node); end
  def only_expectations?(body, arg); end
  def single_expectation?(body, arg); end
end
class RuboCop::Cop::RSpec::LeadingSubject < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def check_previous_nodes(node); end
  def find_first_offending_node(node); end
  def in_spec_block?(node); end
  def node_range(node); end
  def offending?(node); end
  def on_block(node); end
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::RSpec::LeakyConstantDeclaration < RuboCop::Cop::RSpec::Cop
  def in_example_or_shared_group?(node = nil); end
  def inside_describe_block?(node); end
  def on_casgn(node); end
  def on_class(node); end
  def on_module(node); end
end
class RuboCop::Cop::RSpec::LetBeforeExamples < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def check_let_declarations(node); end
  def example_or_group?(node = nil); end
  def find_first_example(node); end
  def multiline_block?(block); end
  def node_range(node); end
  def node_range_with_surrounding_space(node); end
  def on_block(node); end
  def source(node); end
  include RuboCop::Cop::RangeHelp
  include RuboCop::RSpec::FinalEndLocation
end
class RuboCop::Cop::RSpec::LetSetup < RuboCop::Cop::RSpec::Cop
  def let_bang(node0); end
  def method_called?(node0, param1); end
  def on_block(node); end
  def unused_let_bang(node); end
end
class RuboCop::Cop::RSpec::MessageChain < RuboCop::Cop::RSpec::Cop
  def message(node); end
  def message_chain(node = nil); end
  def on_send(node); end
end
class RuboCop::Cop::RSpec::MessageExpectation < RuboCop::Cop::RSpec::Cop
  def message_expectation(node = nil); end
  def on_send(node); end
  def preferred_style?(expectation); end
  def receive_message?(node0); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::MessageSpies < RuboCop::Cop::RSpec::Cop
  def error_message(receiver); end
  def message_expectation(node = nil); end
  def on_send(node); end
  def preferred_style?(expectation); end
  def receive_message(node0); end
  def receive_message_matcher(node); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::MissingExampleGroupArgument < RuboCop::Cop::RSpec::Cop
  def on_block(node); end
end
class RuboCop::Cop::RSpec::MultipleDescribes < RuboCop::Cop::RSpec::Cop
  def on_top_level_describe(node, _args); end
  include RuboCop::RSpec::TopLevelDescribe
end
class RuboCop::Cop::RSpec::MultipleExpectations < RuboCop::Cop::RSpec::Cop
  def aggregate_failures?(node = nil); end
  def aggregate_failures_block?(node = nil); end
  def aggregate_failures_present?(node = nil); end
  def example_with_aggregate_failures?(example_node); end
  def expect?(node = nil); end
  def find_aggregate_failures(example_node); end
  def find_expectation(node, &block); end
  def flag_example(node, expectation_count:); end
  def max_expectations; end
  def on_block(node); end
  include RuboCop::Cop::ConfigurableMax
end
class RuboCop::Cop::RSpec::MultipleSubjects < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def named_subject?(node); end
  def on_block(node); end
  def remove_autocorrect(node); end
  def rename_autocorrect(node); end
  include RuboCop::Cop::RangeHelp
end
class RuboCop::Cop::RSpec::NamedSubject < RuboCop::Cop::RSpec::Cop
  def ignored_shared_example?(node); end
  def on_block(node); end
  def rspec_block?(node = nil); end
  def shared_example?(node = nil); end
  def subject_usage(node0); end
end
class RuboCop::Cop::RSpec::NestedGroups < RuboCop::Cop::RSpec::Cop
  def find_contexts(node0); end
  def find_nested_contexts(node, nesting: nil, &block); end
  def max_nesting; end
  def max_nesting_config; end
  def message(nesting); end
  def on_top_level_describe(node, _args); end
  include RuboCop::Cop::ConfigurableMax
  include RuboCop::RSpec::TopLevelDescribe
end
class RuboCop::Cop::RSpec::NotToNot < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def message(_node); end
  def not_to_not_offense(node = nil, param1); end
  def on_send(node); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::OverwritingSetup < RuboCop::Cop::RSpec::Cop
  def common_setup?(node); end
  def find_duplicates(node); end
  def first_argument_name(node = nil); end
  def on_block(node); end
  def setup?(node = nil); end
end
class RuboCop::Cop::RSpec::Pending < RuboCop::Cop::RSpec::Cop
  def on_send(node); end
  def pending_block?(node = nil); end
  def skip_or_pending?(node = nil); end
  def skippable?(node = nil); end
  def skipped?(node); end
  def skipped_in_metadata?(node = nil); end
end
module RuboCop::Cop::RSpec::InflectedHelper
  def autocorrect_inflected(node); end
  def be_bool?(node = nil); end
  def be_boolthy?(node = nil); end
  def boolean_matcher?(node); end
  def check_inflected(node); end
  def message_inflected(predicate); end
  def predicate?(sym); end
  def predicate_in_actual?(node = nil); end
  def remove_predicate(corrector, predicate); end
  def rewrite_matcher(corrector, predicate, matcher); end
  def to_predicate_matcher(name); end
  def true?(to_symbol, matcher); end
  extend RuboCop::NodePattern::Macros
  include RuboCop::RSpec::Language
end
module RuboCop::Cop::RSpec::ExplicitHelper
  def allowed_explicit_matchers; end
  def autocorrect_explicit(node); end
  def autocorrect_explicit_block(node); end
  def autocorrect_explicit_send(node); end
  def check_explicit(node); end
  def corrector_explicit(to_node, actual, matcher, block_child); end
  def message_explicit(matcher); end
  def move_predicate(corrector, actual, matcher, block_child); end
  def predicate_matcher?(node = nil); end
  def predicate_matcher_block?(node = nil); end
  def predicate_matcher_name?(name); end
  def replacement_matcher(node); end
  def to_predicate_method(matcher); end
  extend RuboCop::NodePattern::Macros
  include RuboCop::RSpec::Language
end
class RuboCop::Cop::RSpec::PredicateMatcher < RuboCop::Cop::RSpec::Cop
  def args_loc(send_node); end
  def autocorrect(node); end
  def block_loc(send_node); end
  def on_block(node); end
  def on_send(node); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
  include RuboCop::Cop::RSpec::ExplicitHelper
  include RuboCop::Cop::RSpec::InflectedHelper
end
class RuboCop::Cop::RSpec::ReceiveCounts < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def matcher_for(method, count); end
  def message_for(node, source); end
  def on_send(node); end
  def range(node, offending_node); end
  def receive_counts(node = nil); end
  def stub?(node0); end
end
class RuboCop::Cop::RSpec::ReceiveNever < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def method_on_stub?(node0); end
  def on_send(node); end
end
class RuboCop::Cop::RSpec::RepeatedDescription < RuboCop::Cop::RSpec::Cop
  def on_block(node); end
  def repeated_descriptions(node); end
end
class RuboCop::Cop::RSpec::RepeatedExample < RuboCop::Cop::RSpec::Cop
  def example_signature(example); end
  def on_block(node); end
  def repeated_examples(node); end
end
class RuboCop::Cop::RSpec::ReturnFromStub < RuboCop::Cop::RSpec::Cop
  def and_return_value(node0); end
  def autocorrect(node); end
  def check_and_return_call(node); end
  def check_block_body(block); end
  def contains_stub?(node0); end
  def dynamic?(node); end
  def on_block(node); end
  def on_send(node); end
  include RuboCop::Cop::ConfigurableEnforcedStyle
end
class RuboCop::Cop::RSpec::ReturnFromStub::AndReturnCallCorrector
  def arg; end
  def call(corrector); end
  def hash_without_braces?; end
  def heredoc?; end
  def initialize(node); end
  def node; end
  def range; end
  def receiver; end
  def replacement; end
end
class RuboCop::Cop::RSpec::ReturnFromStub::BlockBodyCorrector
  def block; end
  def body; end
  def call(corrector); end
  def heredoc?; end
  def initialize(block); end
  def node; end
end
class RuboCop::Cop::RSpec::ScatteredLet < RuboCop::Cop::RSpec::Cop
  def check_let_declarations(body); end
  def on_block(node); end
end
class RuboCop::Cop::RSpec::ScatteredSetup < RuboCop::Cop::RSpec::Cop
  def analyzable_hooks(node); end
  def on_block(node); end
end
class RuboCop::Cop::RSpec::SharedContext < RuboCop::Cop::RSpec::Cop
  def add_shared_item_offense(node, message); end
  def autocorrect(node); end
  def context?(node0); end
  def context_with_only_examples(node); end
  def examples?(node0); end
  def examples_with_only_context(node); end
  def on_block(node); end
  def shared_context(node = nil); end
  def shared_example(node = nil); end
end
class RuboCop::Cop::RSpec::SharedExamples < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def on_send(node); end
  def shared_examples(node = nil); end
end
class RuboCop::Cop::RSpec::SharedExamples::Checker
  def initialize(node); end
  def message; end
  def node; end
  def preferred_style; end
  def symbol; end
  def wrap_with_single_quotes(string); end
end
class RuboCop::Cop::RSpec::SingleArgumentMessageChain < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def autocorrect_array_arg(corrector, arg); end
  def autocorrect_hash_arg(corrector, arg); end
  def key_to_arg(node); end
  def message(node); end
  def message_chain(node = nil); end
  def on_send(node); end
  def replacement(method); end
  def single_element_array?(node); end
  def single_key_hash?(node = nil); end
  def valid_usage?(node); end
end
class RuboCop::Cop::RSpec::SubjectStub < RuboCop::Cop::RSpec::Cop
  def find_subject(node, parent: nil, &block); end
  def find_subject_expectation(node, subject_name, &block); end
  def find_subject_stub(node, &block); end
  def message_expectation?(node = nil, param1); end
  def message_expectation_matcher?(node0); end
  def on_block(node); end
  def redefines_subject?(node); end
  def subject(node = nil); end
end
class RuboCop::Cop::RSpec::UnspecifiedException < RuboCop::Cop::RSpec::Cop
  def block_with_args?(node); end
  def empty_exception_matcher?(node); end
  def empty_raise_error_or_exception(node = nil); end
  def on_send(node); end
end
class RuboCop::Cop::RSpec::VerifiedDoubles < RuboCop::Cop::RSpec::Cop
  def on_send(node); end
  def symbol?(name); end
  def unverified_double(node = nil); end
end
class RuboCop::Cop::RSpec::VoidExpect < RuboCop::Cop::RSpec::Cop
  def check_expect(node); end
  def expect?(node = nil); end
  def expect_block?(node = nil); end
  def on_block(node); end
  def on_send(node); end
  def void?(expect); end
end
class RuboCop::Cop::RSpec::Yield < RuboCop::Cop::RSpec::Cop
  def autocorrect(node); end
  def block_arg(node = nil); end
  def block_call?(node = nil, param1); end
  def block_range(node); end
  def calling_block?(node, block); end
  def convert_block_to_yield(node); end
  def generate_replacement(node); end
  def method_on_stub?(node0); end
  def on_block(node); end
  include RuboCop::Cop::RangeHelp
end
module RuboCop::Cop::Layout
end
class RuboCop::Cop::Layout::ExtraSpacing < RuboCop::Cop::Cop
  def self.autocorrect_incompatible_with; end
end
class RuboCop::AST::Node < Parser::AST::Node
  include RuboCop::RSpec::Node
end
