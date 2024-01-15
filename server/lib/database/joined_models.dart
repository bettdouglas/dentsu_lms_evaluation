// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'database.dart';

class QuoteWithAllData {
  final Agent sourceAgent;
  final Lead lead;
  final Quote quote;
  final QuoteBenefit? quoteBenefit;
  final QuoteSetup? quoteSetup;
  QuoteWithAllData({
    required this.lead,
    required this.quote,
    required this.sourceAgent,
    this.quoteBenefit,
    this.quoteSetup,
  });

  @override
  String toString() {
    return 'QuoteWithAllData(sourceAgent: $sourceAgent, lead: $lead, quote: $quote, quoteBenefit: $quoteBenefit, quoteSetup: $quoteSetup)';
  }

  @override
  bool operator ==(covariant QuoteWithAllData other) {
    if (identical(this, other)) return true;

    return other.sourceAgent == sourceAgent &&
        other.lead == lead &&
        other.quote == quote &&
        other.quoteBenefit == quoteBenefit &&
        other.quoteSetup == quoteSetup;
  }

  @override
  int get hashCode {
    return sourceAgent.hashCode ^
        lead.hashCode ^
        quote.hashCode ^
        quoteBenefit.hashCode ^
        quoteSetup.hashCode;
  }
}
