.class public LX/2eH;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:S

.field public final A01:S

.field public final A02:Z


# direct methods
.method public constructor <init>(ZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LX/2eH;->A02:Z

    int-to-short v0, p2

    iput-short v0, p0, LX/2eH;->A01:S

    int-to-short v0, p3

    iput-short v0, p0, LX/2eH;->A00:S

    return-void
.end method
