.class public LX/0wu;
.super Landroid/widget/Filter;
.source ""


# instance fields
.field public final synthetic A00:Lcom/whatsapp/StatusesFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/whatsapp/StatusesFragment;)V
    .locals 0

    iput-object p1, p0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public A00(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LX/1Cs;

    iget-object v0, p0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    iget-object v1, v0, Lcom/whatsapp/StatusesFragment;->A0j:LX/1Aa;

    iget-object v0, v3, LX/1Cs;->A0A:Lcom/whatsapp/jid/UserJid;

    invoke-virtual {v1, v0}, LX/1Aa;->A0B(LX/254;)LX/1DL;

    move-result-object v2

    iget-object v0, p0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    iget-object v1, v0, Lcom/whatsapp/StatusesFragment;->A0Y:LX/13q;

    const/4 v0, 0x1

    invoke-virtual {v1, v2, p2, v0}, LX/13q;->A0C(LX/1DL;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, LX/1rg;

    iget-object v0, p0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    invoke-direct {v1, v0, v3}, LX/1rg;-><init>(Lcom/whatsapp/StatusesFragment;LX/1Cs;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 22

    move-object/from16 v0, p0

    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v4, LX/1rg;

    iget-object v2, v0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    iget-object v5, v2, Lcom/whatsapp/StatusesFragment;->A07:LX/0ws;

    iget-object v5, v5, LX/0ws;->A00:LX/1Cs;

    if-nez v5, :cond_0

    new-instance v5, LX/1Cs;

    iget-object v6, v2, Lcom/whatsapp/StatusesFragment;->A0d:LX/17W;

    sget-object v7, LX/2Jn;->A00:LX/2Jn;

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const-wide/16 v16, -0x1

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v5 .. v21}, LX/1Cs;-><init>(LX/17W;Lcom/whatsapp/jid/UserJid;JJJJJJII)V

    :cond_0
    invoke-direct {v4, v2, v5}, LX/1rg;-><init>(Lcom/whatsapp/StatusesFragment;LX/1Cs;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v5, v0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    iget-object v2, v5, Lcom/whatsapp/StatusesFragment;->A07:LX/0ws;

    iget-object v2, v2, LX/0ws;->A00:LX/1Cs;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    new-instance v2, LX/1rc;

    invoke-direct {v2, v5}, LX/1rc;-><init>(Lcom/whatsapp/StatusesFragment;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    iget-object v2, v2, Lcom/whatsapp/StatusesFragment;->A0i:LX/181;

    invoke-static {v4, v2}, LX/1Rv;->A03(Ljava/lang/String;LX/181;)Ljava/util/ArrayList;

    move-result-object v4

    :cond_3
    iget-object v2, v0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    iget-object v2, v2, Lcom/whatsapp/StatusesFragment;->A07:LX/0ws;

    iget-object v2, v2, LX/0ws;->A03:Ljava/util/List;

    invoke-virtual {v0, v2, v4}, LX/0wu;->A00(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v10

    iget-object v2, v0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    iget-object v2, v2, Lcom/whatsapp/StatusesFragment;->A07:LX/0ws;

    iget-object v2, v2, LX/0ws;->A04:Ljava/util/List;

    invoke-virtual {v0, v2, v4}, LX/0wu;->A00(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v9

    iget-object v2, v0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    iget-object v2, v2, Lcom/whatsapp/StatusesFragment;->A07:LX/0ws;

    iget-object v2, v2, LX/0ws;->A02:Ljava/util/List;

    invoke-virtual {v0, v2, v4}, LX/0wu;->A00(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v7, -0x1

    invoke-static {}, Lcom/whatsapp/yo/yo;->HideRStatus()Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v2, :cond_5

    new-instance v6, LX/1rf;

    iget-object v2, v0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    const-wide/16 v4, 0x0

    invoke-direct {v6, v2, v4, v5}, LX/1rf;-><init>(Lcom/whatsapp/StatusesFragment;J)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v7, v2

    :goto_0
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    invoke-static {}, Lcom/whatsapp/yo/yo;->HideVStatus()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v2, :cond_4

    new-instance v2, LX/1rf;

    iget-object v0, v0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    const-wide/16 v4, 0x1

    invoke-direct {v2, v0, v4, v5}, LX/1rf;-><init>(Lcom/whatsapp/StatusesFragment;J)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    new-instance v0, LX/0wq;

    invoke-direct {v0, v6, v7, v1, v8}, LX/0wq;-><init>(IILjava/util/List;Ljava/util/List;)V

    iput-object v0, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v3, Landroid/widget/Filter$FilterResults;->count:I

    return-object v3

    :cond_5
    const/4 v6, -0x1

    goto :goto_0
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 5

    iget-object v3, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v3, :cond_1

    check-cast v3, LX/0wq;

    iget-object v2, p0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    iget-object v0, v3, LX/0wq;->A02:Ljava/util/List;

    iput-object v0, v2, Lcom/whatsapp/StatusesFragment;->A0F:Ljava/util/List;

    iget-object v1, v3, LX/0wq;->A03:Ljava/util/List;

    iput-object v1, v2, Lcom/whatsapp/StatusesFragment;->A0G:Ljava/util/List;

    iget v0, v3, LX/0wq;->A00:I

    iput v0, v2, Lcom/whatsapp/StatusesFragment;->A00:I

    iget v0, v3, LX/0wq;->A01:I

    iput v0, v2, Lcom/whatsapp/StatusesFragment;->A01:I

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {}, Lcom/whatsapp/yo/yo;->HideMStatus()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    iget-object v4, p0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    iget-object v3, v4, Lcom/whatsapp/StatusesFragment;->A0F:Ljava/util/List;

    new-instance v2, LX/1rf;

    const-wide/16 v0, 0x2

    invoke-direct {v2, v4, v0, v1}, LX/1rf;-><init>(Lcom/whatsapp/StatusesFragment;J)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    iget-boolean v0, v2, Lcom/whatsapp/StatusesFragment;->A0N:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v2, Lcom/whatsapp/StatusesFragment;->A0L:Z

    if-nez v0, :cond_0

    iget-boolean v0, v2, Lcom/whatsapp/StatusesFragment;->A0K:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v1, v2, Lcom/whatsapp/StatusesFragment;->A0F:Ljava/util/List;

    iget-object v0, v2, Lcom/whatsapp/StatusesFragment;->A0G:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v3, p0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    iput-object p1, v3, Lcom/whatsapp/StatusesFragment;->A0D:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-nez p1, :cond_3

    move-object v1, v2

    :goto_0
    iget-object v0, p0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    iget-object v0, v0, Lcom/whatsapp/StatusesFragment;->A0i:LX/181;

    invoke-static {v1, v0}, LX/1Rv;->A03(Ljava/lang/String;LX/181;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v3, Lcom/whatsapp/StatusesFragment;->A0E:Ljava/util/List;

    iget-object v0, p0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    invoke-virtual {v0}, Lcom/whatsapp/StatusesFragment;->A0q()V

    iget-object v1, p0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    iget-object v0, v1, Lcom/whatsapp/StatusesFragment;->A02:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v2, v1, Lcom/whatsapp/StatusesFragment;->A02:Landroid/animation/AnimatorSet;

    :cond_2
    iget-object v0, p0, LX/0wu;->A00:Lcom/whatsapp/StatusesFragment;

    iget-object v0, v0, Lcom/whatsapp/StatusesFragment;->A08:LX/0wt;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
