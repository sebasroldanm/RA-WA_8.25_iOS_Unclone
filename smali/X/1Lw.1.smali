.class public final synthetic LX/1Lw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/http/conn/params/ConnPerRoute;


# static fields
.field public static final synthetic A00:LX/1Lw;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LX/1Lw;

    invoke-direct {v0}, LX/1Lw;-><init>()V

    sput-object v0, LX/1Lw;->A00:LX/1Lw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
