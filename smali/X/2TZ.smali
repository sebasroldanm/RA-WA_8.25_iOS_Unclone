.class public final synthetic LX/2TZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic A00:LX/2TZ;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LX/2TZ;

    invoke-direct {v0}, LX/2TZ;-><init>()V

    sput-object v0, LX/2TZ;->A00:LX/2TZ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    check-cast p1, LX/2Tb;

    check-cast p2, LX/2Tb;

    iget-wide v3, p1, LX/2Tb;->A00:J

    iget-wide v1, p2, LX/2Tb;->A00:J

    cmp-long v0, v3, v1

    return v0
.end method
