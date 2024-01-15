import 'package:server/database/database.dart' as db;
import 'package:server/database/joined_models.dart';
import 'package:server/grpc-gen/google/protobuf/timestamp.pb.dart';
import 'package:server/grpc-gen/models.pb.dart';

extension AsGrpcAgent on db.Agent {
  Agent asGrpcAgent() {
    return Agent(
      id: id,
      createdAt: Timestamp.fromDateTime(createdAt),
      updatedAt: updatedAt != null ? Timestamp.fromDateTime(updatedAt!) : null,
      email: email,
      role: role,
      name: name,
    );
  }
}

extension AsGrpcLead on db.Lead {
  Lead asGrpcLead() {
    return Lead(
      id: id,
      createdAt: Timestamp.fromDateTime(createdAt),
      updatedAt: updatedAt != null ? Timestamp.fromDateTime(updatedAt!) : null,
      email: email,
      name: name,
      location: location,
      appointmentDate: appointmentDate != null
          ? Timestamp.fromDateTime(appointmentDate!)
          : null,
      isCancelled: isCancelled ?? false,
      isContacted: isContacted ?? false,
    );
  }
}

extension AsGrpcQuote on QuoteWithAllData {
  Quote asGrpcQuote() {
    return Quote(
      id: quote.id,
      createdAt: Timestamp.fromDateTime(quote.createdAt),
      updatedAt: quote.updatedAt != null
          ? Timestamp.fromDateTime(quote.updatedAt!)
          : null,
      businessUnit: quote.businessUnit,
      lead: lead.asGrpcLead(),
      quoteId: quote.quoteId,
      sourceAgent: sourceAgent.asGrpcAgent(),
      benefits: quoteBenefit?.asGrpcQuoteBenefit(),
      setup: quoteSetup?.asGrpcQuoteSetup(),
    );
  }
}

extension AsGrpcQuoteBenefit on db.QuoteBenefit {
  QuoteBenefit asGrpcQuoteBenefit() {
    return QuoteBenefit(
      covid19Cover: covid19Cover,
      dental: dental,
      inPatient: inPatient,
      lastExpense: lastExpense,
      maternity: maternity,
      noCoPayment: noCoPayment,
      optical: optical,
      outPatient: outPatient,
      personalAccident: personalAccident,
    );
  }
}

extension AsGrpcQuoteSetup on db.QuoteSetup {
  QuoteSetup asGrpcQuoteSetup() {
    return QuoteSetup(
      ageBracket: ageBracket,
      coverChildren: coverChildren,
      inPatientCoverLimit: inPatientCoverLimit,
      numberOfChildren: numberOfChildren,
      spouseAgeBracket: spouseAgeBracket,
      spouseCovered: spouseCovered,
    );
  }
}
