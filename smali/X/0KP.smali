.class public final LX/0KP;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A01:Ljava/util/regex/Pattern;

.field public static final A02:Ljava/util/regex/Pattern;


# instance fields
.field public final A00:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)(.*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LX/0KP;->A01:Ljava/util/regex/Pattern;

    const-string v0, "(\\S+?):(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LX/0KP;->A02:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, LX/0KP;->A00:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static A00(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    :cond_0
    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_1

    const-string v1, "Invalid anchor value: "

    const-string v0, "WebvttCueParser"

    invoke-static {v1, p0, v0}, LX/0CI;->A0q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, -0x80000000

    return v0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    goto :goto_0

    :sswitch_2
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :sswitch_3
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    return v2

    :cond_3
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch
.end method

.method public static A01(Ljava/lang/String;LX/0KM;)V
    .locals 9

    const-string v2, "WebvttCueParser"

    sget-object v0, LX/0KP;->A02:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    const-string v0, "line"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    const/16 v1, 0x2c

    const/4 v6, -0x1

    if-eqz v0, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v6, :cond_0

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LX/0KP;->A00(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, LX/0KM;->A03:I

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-string v0, "%"

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v4}, LX/0KQ;->A00(Ljava/lang/String;)F

    move-result v0

    iput v0, p1, LX/0KM;->A00:F

    iput v5, p1, LX/0KM;->A04:I

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    iput v0, p1, LX/0KM;->A03:I

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    int-to-float v0, v0

    iput v0, p1, LX/0KM;->A00:F

    iput v7, p1, LX/0KM;->A04:I

    goto :goto_0

    :cond_3
    const-string v0, "align"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v0, "center"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 p0, 0x2

    if-nez v0, :cond_4

    goto :goto_2

    :sswitch_1
    const-string v0, "middle"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 p0, 0x3

    if-nez v0, :cond_4

    goto :goto_2

    :sswitch_2
    const-string v0, "end"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 p0, 0x4

    if-nez v0, :cond_4

    goto :goto_2

    :sswitch_3
    const-string v0, "left"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 p0, 0x1

    if-nez v0, :cond_4

    goto :goto_2

    :sswitch_4
    const-string v0, "right"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 p0, 0x5

    if-nez v0, :cond_4

    goto :goto_2

    :sswitch_5
    const-string v0, "start"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 p0, 0x0

    if-nez v0, :cond_4

    :goto_2
    const/4 p0, -0x1

    :cond_4
    if-eqz p0, :cond_6

    if-eq p0, v1, :cond_6

    if-eq p0, v5, :cond_7

    if-eq p0, v6, :cond_7

    if-eq p0, v7, :cond_5

    if-eq p0, v8, :cond_5

    const-string v1, "Invalid alignment value: "

    invoke-static {v1, v4, v2}, LX/0CI;->A0q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_3

    :cond_6
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_3

    :cond_7
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_3
    iput-object v0, p1, LX/0KM;->A08:Landroid/text/Layout$Alignment;

    goto/16 :goto_0

    :cond_8
    const-string v0, "position"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v6, :cond_9

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LX/0KP;->A00(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, LX/0KM;->A05:I

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-static {v4}, LX/0KQ;->A00(Ljava/lang/String;)F

    move-result v0

    iput v0, p1, LX/0KM;->A01:F

    goto/16 :goto_0

    :cond_9
    const/high16 v0, -0x80000000

    iput v0, p1, LX/0KM;->A05:I

    goto :goto_4

    :cond_a
    const-string v0, "size"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v4}, LX/0KQ;->A00(Ljava/lang/String;)F

    move-result v0

    iput v0, p1, LX/0KM;->A02:F

    goto/16 :goto_0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown cue setting "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "Skipping bad cue setting: "

    invoke-static {v0}, LX/0CI;->A0K(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_0
        -0x4009266b -> :sswitch_1
        0x188db -> :sswitch_2
        0x32a007 -> :sswitch_3
        0x677c21c -> :sswitch_4
        0x68ac462 -> :sswitch_5
    .end sparse-switch
.end method

.method public static A02(Ljava/lang/String;LX/0KN;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V
    .locals 17

    move-object/from16 v6, p1

    iget v4, v6, LX/0KN;->A00:I

    move-object/from16 v5, p2

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    iget-object v7, v6, LX/0KN;->A01:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v2, 0x2

    const/4 v1, 0x1

    if-eqz v8, :cond_18

    const/16 v0, 0x69

    if-eq v8, v0, :cond_17

    const v0, 0x3291ee

    if-eq v8, v0, :cond_16

    const/16 v0, 0x62

    if-eq v8, v0, :cond_15

    const/16 v0, 0x63

    if-eq v8, v0, :cond_14

    const/16 v0, 0x75

    if-eq v8, v0, :cond_13

    const/16 v0, 0x76

    if-ne v8, v0, :cond_0

    const-string v0, "v"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x5

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    const/4 v8, -0x1

    :cond_1
    const/16 v7, 0x21

    packed-switch v8, :pswitch_data_0

    :cond_2
    return-void

    :pswitch_0
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v5, v0, v4, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v5, v0, v4, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v5, v0, v4, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    :pswitch_3
    move-object/from16 v7, p4

    invoke-interface {v7}, Ljava/util/List;->clear()V

    move-object/from16 v10, p3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_c

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX/0KK;

    iget-object v15, v6, LX/0KN;->A01:Ljava/lang/String;

    iget-object v12, v6, LX/0KN;->A03:[Ljava/lang/String;

    iget-object v14, v6, LX/0KN;->A02:Ljava/lang/String;

    iget-object v0, v2, LX/0KK;->A08:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v2, LX/0KK;->A09:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v2, LX/0KK;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v2, LX/0KK;->A0A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    :goto_3
    if-lez v11, :cond_3

    new-instance v0, LX/0KO;

    invoke-direct {v0, v11, v2}, LX/0KO;-><init>(ILX/0KK;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    iget-object v13, v2, LX/0KK;->A08:Ljava/lang/String;

    move-object/from16 v11, p0

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v1, -0x1

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v1, 0x40000000    # 2.0f

    :cond_5
    :goto_4
    iget-object v13, v2, LX/0KK;->A09:Ljava/lang/String;

    const/16 v16, 0x2

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v11, -0x1

    if-eq v1, v11, :cond_7

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int v11, v1, v16

    :cond_6
    move v1, v11

    :cond_7
    iget-object v15, v2, LX/0KK;->A0A:Ljava/lang/String;

    const/4 v13, 0x4

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v11, -0x1

    if-eq v1, v11, :cond_9

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int v11, v1, v13

    :cond_8
    move v1, v11

    :cond_9
    const/4 v0, -0x1

    if-eq v1, v0, :cond_b

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iget-object v0, v2, LX/0KK;->A0B:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v2, LX/0KK;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v11, v0, 0x2

    add-int/2addr v11, v1

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    :cond_b
    const/4 v11, 0x0

    goto :goto_3

    :cond_c
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v6, :cond_2

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/0KO;

    iget-object v8, v0, LX/0KO;->A01:LX/0KK;

    if-eqz v8, :cond_11

    invoke-virtual {v8}, LX/0KK;->A00()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_12

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-virtual {v8}, LX/0KK;->A00()I

    move-result v0

    invoke-direct {v1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v10, 0x21

    invoke-virtual {v5, v1, v4, v3, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_6
    const/4 v9, 0x1

    iget v1, v8, LX/0KK;->A06:I

    const/4 v0, 0x0

    if-ne v1, v9, :cond_d

    const/4 v0, 0x1

    :cond_d
    if-eqz v0, :cond_e

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v5, v0, v4, v3, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_e
    iget-boolean v0, v8, LX/0KK;->A0D:Z

    if-eqz v0, :cond_f

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    if-eqz v0, :cond_1a

    iget v0, v8, LX/0KK;->A02:I

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5, v1, v4, v3, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_f
    iget-boolean v0, v8, LX/0KK;->A0C:Z

    if-eqz v0, :cond_10

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    if-eqz v0, :cond_19

    iget v0, v8, LX/0KK;->A00:I

    invoke-direct {v1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v5, v1, v4, v3, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_10
    iget-object v0, v8, LX/0KK;->A07:Ljava/lang/String;

    if-eqz v0, :cond_11

    new-instance v1, Landroid/text/style/TypefaceSpan;

    invoke-direct {v1, v0}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v4, v3, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    const/16 v10, 0x21

    goto :goto_6

    :cond_13
    const-string v0, "u"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x2

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_14
    const-string v0, "c"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x3

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_15
    const-string v0, "b"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_16
    const-string v0, "lang"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x4

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_17
    const-string v0, "i"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_18
    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x6

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v0, "Background color not defined."

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v0, "Font color not defined"

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static A03(Ljava/lang/String;Ljava/lang/String;LX/0KM;Ljava/util/List;)V
    .locals 17

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v9, Ljava/util/Stack;

    invoke-direct {v9}, Ljava/util/Stack;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v14, p1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v6, p3

    move-object/from16 v12, p0

    if-ge v1, v15, :cond_22

    invoke-virtual {v14, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v11, 0x3e

    const/16 v2, 0x3c

    const/16 v10, 0x26

    const/4 v8, 0x2

    const/4 v3, -0x1

    const/4 v7, 0x1

    if-eq v0, v10, :cond_14

    if-eq v0, v2, :cond_0

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    if-ge v2, v15, :cond_9

    invoke-virtual {v14, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v0, 0x2f

    const/16 v16, 0x0

    if-ne v10, v0, :cond_1

    const/16 v16, 0x1

    :cond_1
    invoke-virtual {v14, v11, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    add-int/lit8 v2, v10, 0x1

    if-ne v10, v3, :cond_2

    move v2, v15

    :cond_2
    add-int/lit8 v10, v2, -0x2

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v15, 0x0

    if-ne v3, v0, :cond_3

    const/4 v15, 0x1

    :cond_3
    const/4 v0, 0x1

    if-eqz v16, :cond_4

    const/4 v0, 0x2

    :cond_4
    add-int/2addr v1, v0

    if-nez v15, :cond_5

    add-int/lit8 v10, v2, -0x1

    :cond_5
    invoke-virtual {v14, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_13

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/16 v0, 0x62

    const/4 v3, 0x5

    if-eq v11, v0, :cond_12

    const/16 v0, 0x63

    if-eq v11, v0, :cond_11

    const/16 v0, 0x69

    if-eq v11, v0, :cond_10

    const v0, 0x3291ee

    if-eq v11, v0, :cond_f

    const/16 v0, 0x75

    if-eq v11, v0, :cond_e

    const/16 v0, 0x76

    if-ne v11, v0, :cond_6

    const-string v0, "v"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x5

    if-nez v0, :cond_7

    :cond_6
    :goto_2
    const/4 v11, -0x1

    :cond_7
    if-eqz v11, :cond_8

    if-eq v11, v7, :cond_8

    if-eq v11, v8, :cond_8

    const/4 v0, 0x3

    if-eq v11, v0, :cond_8

    const/4 v0, 0x4

    if-eq v11, v0, :cond_8

    if-eq v11, v3, :cond_8

    const/4 v7, 0x0

    :cond_8
    if-eqz v7, :cond_9

    if-nez v16, :cond_d

    if-nez v15, :cond_9

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-eqz v14, :cond_a

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v9, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_4
    move v1, v2

    goto/16 :goto_0

    :cond_a
    const-string v0, " "

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_c

    const-string v0, ""

    :goto_5
    const-string v1, "\\."

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v6, v7, v13

    array-length v3, v7

    const/4 v1, 0x1

    if-le v3, v1, :cond_b

    invoke-static {v7, v1, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_6
    new-instance v3, LX/0KN;

    invoke-direct {v3, v6, v8, v0, v1}, LX/0KN;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    sget-object v1, LX/0KN;->A04:[Ljava/lang/String;

    goto :goto_6

    :cond_c
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_d
    invoke-virtual {v9}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/0KN;

    invoke-static {v12, v0, v5, v6, v4}, LX/0KP;->A02(Ljava/lang/String;LX/0KN;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, v0, LX/0KN;->A01:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4

    :cond_e
    const-string v0, "u"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x4

    if-nez v0, :cond_7

    goto :goto_2

    :cond_f
    const-string v0, "lang"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x3

    if-nez v0, :cond_7

    goto/16 :goto_2

    :cond_10
    const-string v0, "i"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x2

    if-nez v0, :cond_7

    goto/16 :goto_2

    :cond_11
    const-string v0, "c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_7

    goto/16 :goto_2

    :cond_12
    const-string v0, "b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_7

    goto/16 :goto_2

    :cond_13
    const-string v0, "[ \\.]"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v13

    goto/16 :goto_1

    :cond_14
    const/16 v2, 0x3b

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v14, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/16 v3, 0x20

    invoke-virtual {v14, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v12, -0x1

    if-ne v6, v12, :cond_20

    move v6, v2

    :cond_15
    :goto_7
    if-eq v6, v12, :cond_21

    invoke-virtual {v14, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/16 v0, 0xced

    if-eq v12, v0, :cond_1f

    const/16 v0, 0xd88

    if-eq v12, v0, :cond_1e

    const v0, 0x179c4

    if-eq v12, v0, :cond_1d

    const v0, 0x337f11

    if-ne v12, v0, :cond_16

    const-string v0, "nbsp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v12, 0x2

    if-nez v0, :cond_17

    :cond_16
    :goto_8
    const/4 v12, -0x1

    :cond_17
    if-eqz v12, :cond_1c

    if-eq v12, v7, :cond_1b

    if-eq v12, v8, :cond_1a

    const/4 v0, 0x3

    if-eq v12, v0, :cond_19

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "ignoring unsupported entity: \'&"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "WebvttCueParser"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    if-ne v6, v2, :cond_18

    const-string v0, " "

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_18
    add-int/lit8 v1, v6, 0x1

    goto/16 :goto_0

    :cond_19
    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_9

    :cond_1a
    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_9

    :cond_1b
    invoke-virtual {v5, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_9

    :cond_1c
    const/16 v0, 0x3c

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_9

    :cond_1d
    const-string v0, "amp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v12, 0x3

    if-nez v0, :cond_17

    goto :goto_8

    :cond_1e
    const-string v0, "lt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v12, 0x0

    if-nez v0, :cond_17

    goto :goto_8

    :cond_1f
    const-string v0, "gt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v12, 0x1

    if-nez v0, :cond_17

    goto :goto_8

    :cond_20
    if-eq v2, v12, :cond_15

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto/16 :goto_7

    :cond_21
    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    :cond_22
    :goto_a
    invoke-virtual {v9}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/0KN;

    invoke-static {v12, v0, v5, v6, v4}, LX/0KP;->A02(Ljava/lang/String;LX/0KN;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    goto :goto_a

    :cond_23
    new-instance v3, LX/0KN;

    new-array v1, v13, [Ljava/lang/String;

    const-string v0, ""

    invoke-direct {v3, v0, v13, v0, v1}, LX/0KN;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-static {v12, v3, v5, v6, v4}, LX/0KP;->A02(Ljava/lang/String;LX/0KN;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, p2

    iput-object v5, v0, LX/0KM;->A09:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public static A04(Ljava/lang/String;Ljava/util/regex/Matcher;LX/0L5;LX/0KM;Ljava/lang/StringBuilder;Ljava/util/List;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LX/0KQ;->A01(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p3, LX/0KM;->A07:J

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LX/0KQ;->A01(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p3, LX/0KM;->A06:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, LX/0KP;->A01(Ljava/lang/String;LX/0KM;)V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    invoke-virtual {p2}, LX/0L5;->A08()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3, p5}, LX/0KP;->A03(Ljava/lang/String;Ljava/lang/String;LX/0KM;Ljava/util/List;)V

    return v2

    :catch_0
    const-string v0, "Skipping cue with bad header: "

    invoke-static {v0}, LX/0CI;->A0K(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "WebvttCueParser"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method
