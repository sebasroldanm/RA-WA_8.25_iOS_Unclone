.class public LX/26e;
.super LX/1Qh;
.source ""


# instance fields
.field public A00:I

.field public A01:LX/1Qx;

.field public final A02:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LX/1Qh;-><init>(Z)V

    const/16 v0, 0x22

    iput v0, p0, LX/1Qh;->A03:I

    iput-object p1, p0, LX/26e;->A02:Ljava/lang/String;

    return-void
.end method
