.class public final enum LX/14d;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final synthetic A00:[LX/14d;

.field public static final enum A01:LX/14d;

.field public static final enum A02:LX/14d;

.field public static final enum A03:LX/14d;

.field public static final enum A04:LX/14d;

.field public static final enum A05:LX/14d;

.field public static final enum A06:LX/14d;


# instance fields
.field public final contextString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v13, LX/14d;

    const/4 v12, 0x0

    const-string v1, "REGISTRATION"

    const-string v0, "registration"

    invoke-direct {v13, v1, v12, v0}, LX/14d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, LX/14d;->A06:LX/14d;

    new-instance v11, LX/14d;

    const/4 v10, 0x1

    const-string v1, "INTERACTIVE"

    const-string v0, "interactive"

    invoke-direct {v11, v1, v10, v0}, LX/14d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, LX/14d;->A03:LX/14d;

    new-instance v9, LX/14d;

    const/4 v8, 0x2

    const-string v1, "BACKGROUND"

    const-string v0, "background"

    invoke-direct {v9, v1, v8, v0}, LX/14d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, LX/14d;->A02:LX/14d;

    new-instance v7, LX/14d;

    const/4 v6, 0x3

    const-string v1, "NOTIFICATION"

    const-string v0, "notification"

    invoke-direct {v7, v1, v6, v0}, LX/14d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, LX/14d;->A05:LX/14d;

    new-instance v5, LX/14d;

    const/4 v4, 0x4

    const-string v1, "MESSAGE"

    const-string v0, "message"

    invoke-direct {v5, v1, v4, v0}, LX/14d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, LX/14d;->A04:LX/14d;

    new-instance v3, LX/14d;

    const/4 v2, 0x5

    const-string v1, "ADD"

    const-string v0, "add"

    invoke-direct {v3, v1, v2, v0}, LX/14d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, LX/14d;->A01:LX/14d;

    const/4 v0, 0x6

    new-array v0, v0, [LX/14d;

    aput-object v13, v0, v12

    aput-object v11, v0, v10

    aput-object v9, v0, v8

    aput-object v7, v0, v6

    aput-object v5, v0, v4

    aput-object v3, v0, v2

    sput-object v0, LX/14d;->A00:[LX/14d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LX/14d;->contextString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LX/14d;
    .locals 1

    const-class v0, LX/14d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LX/14d;

    return-object v0
.end method

.method public static values()[LX/14d;
    .locals 1

    sget-object v0, LX/14d;->A00:[LX/14d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LX/14d;

    return-object v0
.end method
