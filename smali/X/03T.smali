.class public LX/03T;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    iput-object p1, p0, LX/03T;->A00:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LX/03T;->A00:Landroidx/appcompat/widget/SearchView;

    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->A0D:LX/1Wl;

    instance-of v0, v1, LX/2HC;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, LX/1Wl;->A2X(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method
