.class public LX/1Uc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/01p;


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Landroid/view/ActionMode$Callback;

.field public final A02:LX/04S;

.field public final A03:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/1Uc;->A00:Landroid/content/Context;

    iput-object p2, p0, LX/1Uc;->A01:Landroid/view/ActionMode$Callback;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LX/1Uc;->A03:Ljava/util/ArrayList;

    new-instance v0, LX/04S;

    invoke-direct {v0}, LX/04S;-><init>()V

    iput-object v0, p0, LX/1Uc;->A02:LX/04S;

    return-void
.end method


# virtual methods
.method public A00(LX/01q;)Landroid/view/ActionMode;
    .locals 4

    iget-object v0, p0, LX/1Uc;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, LX/1Uc;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX/01t;

    if-eqz v1, :cond_0

    iget-object v0, v1, LX/01t;->A01:LX/01q;

    if-ne v0, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, LX/01t;

    iget-object v0, p0, LX/1Uc;->A00:Landroid/content/Context;

    invoke-direct {v1, v0, p1}, LX/01t;-><init>(Landroid/content/Context;LX/01q;)V

    iget-object v0, p0, LX/1Uc;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final A01(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 3

    iget-object v1, p0, LX/1Uc;->A02:LX/04S;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, LX/04S;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Menu;

    if-nez v2, :cond_0

    new-instance v2, LX/1Ut;

    iget-object v1, p0, LX/1Uc;->A00:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, LX/05q;

    invoke-direct {v2, v1, v0}, LX/1Ut;-><init>(Landroid/content/Context;LX/05q;)V

    iget-object v0, p0, LX/1Uc;->A02:LX/04S;

    invoke-virtual {v0, p1, v2}, LX/04S;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2
.end method

.method public A9N(LX/01q;Landroid/view/MenuItem;)Z
    .locals 4

    iget-object v3, p0, LX/1Uc;->A01:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, LX/1Uc;->A00(LX/01q;)Landroid/view/ActionMode;

    move-result-object v2

    new-instance v1, LX/1Uq;

    iget-object v0, p0, LX/1Uc;->A00:Landroid/content/Context;

    check-cast p2, LX/05r;

    invoke-direct {v1, v0, p2}, LX/1Uq;-><init>(Landroid/content/Context;LX/05r;)V

    invoke-interface {v3, v2, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public ABG(LX/01q;Landroid/view/Menu;)Z
    .locals 3

    iget-object v2, p0, LX/1Uc;->A01:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, LX/1Uc;->A00(LX/01q;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {p0, p2}, LX/1Uc;->A01(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public ABZ(LX/01q;)V
    .locals 2

    iget-object v1, p0, LX/1Uc;->A01:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, LX/1Uc;->A00(LX/01q;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public AEl(LX/01q;Landroid/view/Menu;)Z
    .locals 3

    iget-object v2, p0, LX/1Uc;->A01:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, LX/1Uc;->A00(LX/01q;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {p0, p2}, LX/1Uc;->A01(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
