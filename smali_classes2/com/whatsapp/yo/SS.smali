.class public Lcom/whatsapp/yo/SS;
.super Lcom/whatsapp/yo/c;


# static fields
.field private static f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Landroid/content/SharedPreferences;

.field private static i:Landroid/content/SharedPreferences;

.field private static j:Lcom/google/gson/Gson;

.field private static k:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/whatsapp/yo/c;-><init>()V

    return-void
.end method

.method private static synthetic a(II)V
    .locals 10

    const-string v0, ".xml"

    const-string v1, "com.whatsapp_deletedStatuses_"

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/whatsapp/yo/yo;->getCtx()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/shared_prefs/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/whatsapp/yo/-$$Lambda$SS$GFW2ezgpoDAYDUfJwcuKvcd_-Ro;->INSTANCE:Lcom/whatsapp/yo/-$$Lambda$SS$GFW2ezgpoDAYDUfJwcuKvcd_-Ro;

    invoke-virtual {v2, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_3

    aget-object v8, v3, v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :cond_1
    :goto_1
    if-nez v7, :cond_2

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/whatsapp/yo/SS;->h:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "30day_cleaning_done"

    invoke-interface {p0, p1, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static a(LX/1QA;)V
    .locals 2

    invoke-static {p0}, Lcom/whatsapp/yo/dep;->a(LX/1QA;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/whatsapp/yo/SS;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/whatsapp/yo/SS;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sput-object v0, Lcom/whatsapp/yo/SS;->c:Ljava/lang/String;

    sput-object p0, Lcom/whatsapp/yo/SS;->b:LX/1QA;

    sget-object p0, Lcom/whatsapp/yo/SS;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/whatsapp/yo/yo;->stripJID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/whatsapp/yo/SS;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Lcom/whatsapp/yo/SS;->f:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method private static synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/whatsapp/yo/SS;->a()V

    return-void
.end method

.method private static synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p0, LX/1QA;

    invoke-static {p0}, Lcom/whatsapp/yo/dep;->c(LX/1QA;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/whatsapp/yo/SS;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/whatsapp/yo/SS;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/whatsapp/yo/yo;->setDelIcon(Landroid/widget/TextView;Z)V

    return-void

    :cond_0
    sget-object p0, Lcom/whatsapp/yo/SS;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/whatsapp/yo/SS;->h:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/whatsapp/yo/SS;->c()V

    :cond_0
    invoke-static {p0}, Lcom/whatsapp/yo/SS;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/whatsapp/yo/SS;->j:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/whatsapp/yo/SS;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private static synthetic a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.whatsapp_deletedStatuses_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/whatsapp/yo/SS;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/whatsapp/yo/SS;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/whatsapp/yo/SS;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v1, Lcom/whatsapp/yo/SS;->h:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/whatsapp/yo/SS;->c()V

    :cond_0
    invoke-static {p0}, Lcom/whatsapp/yo/SS;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0}, Lcom/whatsapp/yo/SS;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private static synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/whatsapp/yo/SS;->b()V

    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/whatsapp/yo/SS;->h:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/whatsapp/yo/SS;->j:Lcom/google/gson/Gson;

    sget-object v1, Lcom/whatsapp/yo/SS;->k:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static c()V
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {}, Lcom/whatsapp/yo/yo;->getCtx()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.whatsapp_deletedStatuses_"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/whatsapp/yo/SS;->h:Landroid/content/SharedPreferences;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    :goto_0
    invoke-static {}, Lcom/whatsapp/yo/yo;->getCtx()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/whatsapp/yo/SS;->i:Landroid/content/SharedPreferences;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    sput-object v2, Lcom/whatsapp/yo/SS;->j:Lcom/google/gson/Gson;

    new-instance v2, Lcom/whatsapp/yo/SS$1;

    invoke-direct {v2}, Lcom/whatsapp/yo/SS$1;-><init>()V

    invoke-virtual {v2}, Lcom/whatsapp/yo/SS$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    sput-object v2, Lcom/whatsapp/yo/SS;->k:Ljava/lang/reflect/Type;

    rem-int/lit8 v2, v0, 0x1e

    if-nez v2, :cond_1

    sget-object v2, Lcom/whatsapp/yo/SS;->h:Landroid/content/SharedPreferences;

    const-string v3, "30day_cleaning_done"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/whatsapp/yo/-$$Lambda$SS$n2dbCSafqq_b60-7zf9b4fLLhuE;

    invoke-direct {v3, v0, v1}, Lcom/whatsapp/yo/-$$Lambda$SS$n2dbCSafqq_b60-7zf9b4fLLhuE;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static checkSSDeleted(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    move-object v0, p0

    check-cast v0, LX/1QA;

    invoke-static {v0}, Lcom/whatsapp/yo/SS;->a(LX/1QA;)V

    sget-object v0, Lcom/whatsapp/yo/SS;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/whatsapp/yo/-$$Lambda$SS$4rvyRROZkcBxb2WotLTm8YeOh3I;

    invoke-direct {v1, p0}, Lcom/whatsapp/yo/-$$Lambda$SS$4rvyRROZkcBxb2WotLTm8YeOh3I;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static collectStories(Ljava/util/List;Lcom/whatsapp/status/playback/fragment/StatusPlaybackContactFragment;)V
    .locals 1

    iget-object p1, p1, Lcom/whatsapp/status/playback/fragment/StatusPlaybackContactFragment;->A03:Lcom/whatsapp/jid/UserJid;

    invoke-static {p1}, Lcom/whatsapp/yo/dep;->getJID_t(Lcom/whatsapp/jid/Jid;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/whatsapp/yo/SS;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/whatsapp/yo/SS;->i:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/whatsapp/yo/SS;->j:Lcom/google/gson/Gson;

    sget-object v1, Lcom/whatsapp/yo/SS;->k:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic lambda$4rvyRROZkcBxb2WotLTm8YeOh3I(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lcom/whatsapp/yo/SS;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$8qdSE4j3GLb-YF4fEZP9tfOzoaU(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/whatsapp/yo/SS;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$AAJe5JccIdCuq_BPL-uYA6dXqWQ(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/whatsapp/yo/SS;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$GFW2ezgpoDAYDUfJwcuKvcd_-Ro(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/whatsapp/yo/SS;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$n2dbCSafqq_b60-7zf9b4fLLhuE(II)V
    .locals 0

    invoke-static {p0, p1}, Lcom/whatsapp/yo/SS;->a(II)V

    return-void
.end method

.method public static setCP(I)V
    .locals 1

    sget v0, Lcom/whatsapp/yo/SS;->d:I

    if-eq v0, p0, :cond_0

    sput p0, Lcom/whatsapp/yo/SS;->d:I

    :cond_0
    return-void
.end method

.method public static setSSDateTV(Landroid/widget/TextView;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/whatsapp/yo/SS;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static setVw(Landroid/view/View;)V
    .locals 3

    const-string v0, "id"

    if-eqz p0, :cond_1

    :try_start_0
    const-string v1, "div2"

    invoke-static {v1, v0}, Lcom/whatsapp/yo/yo;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->bringToFront()V

    sget-object v2, Lcom/whatsapp/yo/-$$Lambda$SS$8qdSE4j3GLb-YF4fEZP9tfOzoaU;->INSTANCE:Lcom/whatsapp/yo/-$$Lambda$SS$8qdSE4j3GLb-YF4fEZP9tfOzoaU;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "div"

    invoke-static {v1, v0}, Lcom/whatsapp/yo/yo;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const-string v0, "yoHideStatViewV2"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/whatsapp/yo/shp;->getBooleanPriv(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->bringToFront()V

    sget-object v0, Lcom/whatsapp/yo/-$$Lambda$SS$AAJe5JccIdCuq_BPL-uYA6dXqWQ;->INSTANCE:Lcom/whatsapp/yo/-$$Lambda$SS$AAJe5JccIdCuq_BPL-uYA6dXqWQ;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_1
    return-void
.end method
