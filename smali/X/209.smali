.class public final LX/209;
.super LX/1HM;
.source ""


# instance fields
.field public A00:Ljava/lang/Boolean;

.field public A01:Ljava/lang/Double;

.field public A02:Ljava/lang/Double;

.field public A03:Ljava/lang/Integer;

.field public A04:Ljava/lang/Integer;

.field public A05:Ljava/lang/Integer;

.field public A06:Ljava/lang/Integer;

.field public A07:Ljava/lang/Integer;

.field public A08:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v2, LX/1Pp;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {v2, v0, v0, v0, v1}, LX/1Pp;-><init>(IIIZ)V

    const/16 v0, 0x806

    invoke-direct {p0, v0, v2, v1}, LX/1HM;-><init>(ILX/1Pp;Z)V

    return-void
.end method
