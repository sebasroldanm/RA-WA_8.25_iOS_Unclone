.class public LX/1V0;
.super LX/035;
.source ""


# instance fields
.field public A00:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public A01:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public A02:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public A03:Z

.field public A04:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public A05:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, LX/035;-><init>(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LX/1V0;->A04:Z

    return-void
.end method

.method public constructor <init>(LX/1V0;)V
    .locals 1

    invoke-direct {p0, p1}, LX/035;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p1, LX/1V0;->A04:Z

    iput-boolean v0, p0, LX/1V0;->A04:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LX/035;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, LX/035;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
