.class public final enum Lorg/whispersystems/jobqueue/JobConsumer$JobResult;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final synthetic A00:[Lorg/whispersystems/jobqueue/JobConsumer$JobResult;

.field public static final enum A01:Lorg/whispersystems/jobqueue/JobConsumer$JobResult;

.field public static final enum A02:Lorg/whispersystems/jobqueue/JobConsumer$JobResult;

.field public static final enum A03:Lorg/whispersystems/jobqueue/JobConsumer$JobResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v6, Lorg/whispersystems/jobqueue/JobConsumer$JobResult;

    const/4 v5, 0x0

    const-string v0, "SUCCESS"

    invoke-direct {v6, v0, v5}, Lorg/whispersystems/jobqueue/JobConsumer$JobResult;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/whispersystems/jobqueue/JobConsumer$JobResult;->A03:Lorg/whispersystems/jobqueue/JobConsumer$JobResult;

    new-instance v4, Lorg/whispersystems/jobqueue/JobConsumer$JobResult;

    const/4 v3, 0x1

    const-string v0, "FAILURE"

    invoke-direct {v4, v0, v3}, Lorg/whispersystems/jobqueue/JobConsumer$JobResult;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/whispersystems/jobqueue/JobConsumer$JobResult;->A02:Lorg/whispersystems/jobqueue/JobConsumer$JobResult;

    new-instance v2, Lorg/whispersystems/jobqueue/JobConsumer$JobResult;

    const/4 v1, 0x2

    const-string v0, "DEFERRED"

    invoke-direct {v2, v0, v1}, Lorg/whispersystems/jobqueue/JobConsumer$JobResult;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/whispersystems/jobqueue/JobConsumer$JobResult;->A01:Lorg/whispersystems/jobqueue/JobConsumer$JobResult;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/whispersystems/jobqueue/JobConsumer$JobResult;

    aput-object v6, v0, v5

    aput-object v4, v0, v3

    aput-object v2, v0, v1

    sput-object v0, Lorg/whispersystems/jobqueue/JobConsumer$JobResult;->A00:[Lorg/whispersystems/jobqueue/JobConsumer$JobResult;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
