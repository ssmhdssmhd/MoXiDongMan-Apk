.class public Lcom/wsw/cospa/utils/finally;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Landroid/content/Context;ILandroid/widget/ImageView;I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->for()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 3
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/request/do;->A(I)Lcom/bumptech/glide/request/do;

    move-result-object p3

    check-cast p3, Landroid/support/v4/dn1;

    const v0, 0x7f0801bb

    .line 4
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/do;->super(I)Lcom/bumptech/glide/request/do;

    move-result-object p3

    check-cast p3, Landroid/support/v4/dn1;

    sget-object v0, Lcom/bumptech/glide/try;->HIGH:Lcom/bumptech/glide/try;

    .line 5
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/do;->C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;

    move-result-object p3

    check-cast p3, Landroid/support/v4/dn1;

    sget-object v0, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    .line 6
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object p3

    check-cast p3, Landroid/support/v4/dn1;

    .line 7
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->abstract(Landroid/content/Context;)Lcom/bumptech/glide/goto;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/goto;->public(Ljava/lang/Integer;)Lcom/bumptech/glide/else;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    return-void
.end method

.method public static case(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->for()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    const v1, 0x7f0801bb

    .line 3
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->A(I)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 4
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->super(I)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/try;->HIGH:Lcom/bumptech/glide/try;

    .line 5
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    .line 6
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 7
    invoke-static {p0}, Landroid/support/v4/jh0;->this(Landroid/content/Context;)Landroid/support/v4/ph0;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->n(Ljava/lang/String;)Lcom/wsw/cospa/for;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/for;->J0(Lcom/bumptech/glide/request/do;)Lcom/wsw/cospa/for;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    return-void
.end method

.method public static catch(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILjava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    .line 3
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/request/do;->A(I)Lcom/bumptech/glide/request/do;

    const p3, 0x7f0801bb

    .line 4
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/request/do;->super(I)Lcom/bumptech/glide/request/do;

    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->native()Lcom/bumptech/glide/request/do;

    .line 6
    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->break()Lcom/bumptech/glide/request/do;

    .line 7
    sget-object p3, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    .line 8
    new-instance p3, Lcom/wsw/cospa/utils/strictfp$if;

    invoke-direct {p3}, Lcom/wsw/cospa/utils/strictfp$if;-><init>()V

    const/4 v1, 0x0

    .line 9
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "User-Agent"

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 10
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v5, Lcom/wsw/cospa/utils/finally$do;

    invoke-direct {v5}, Lcom/wsw/cospa/utils/finally$do;-><init>()V

    .line 11
    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 12
    invoke-virtual {v2, p4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map;

    .line 13
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 14
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    .line 15
    :cond_1
    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p3, v5, v6}, Lcom/wsw/cospa/utils/strictfp$if;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/strictfp$if;

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 16
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v3, p4}, Lcom/wsw/cospa/utils/strictfp$if;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/strictfp$if;

    .line 17
    :cond_3
    invoke-static {p0}, Landroid/support/v4/jh0;->this(Landroid/content/Context;)Landroid/support/v4/ph0;

    move-result-object p0

    new-instance p4, Lcom/bumptech/glide/load/model/if;

    invoke-virtual {p3}, Lcom/wsw/cospa/utils/strictfp$if;->for()Lcom/wsw/cospa/utils/strictfp;

    move-result-object p3

    invoke-direct {p4, p1, p3}, Lcom/bumptech/glide/load/model/if;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    invoke-virtual {p0, p4}, Landroid/support/v4/ph0;->m(Ljava/lang/Object;)Lcom/wsw/cospa/for;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/wsw/cospa/for;->E1(Z)Lcom/wsw/cospa/for;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/for;->J0(Lcom/bumptech/glide/request/do;)Lcom/wsw/cospa/for;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    return-void
.end method

.method public static class(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    const v1, 0x7f0801bb

    .line 3
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->A(I)Lcom/bumptech/glide/request/do;

    .line 4
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->super(I)Lcom/bumptech/glide/request/do;

    .line 5
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "load_original_image_key"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const/high16 v1, 0x42a00000    # 80.0f

    .line 6
    invoke-static {p0, v1}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x42700000    # 60.0f

    .line 7
    invoke-static {p0, v2}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/do;->z(II)Lcom/bumptech/glide/request/do;

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->native()Lcom/bumptech/glide/request/do;

    .line 10
    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->break()Lcom/bumptech/glide/request/do;

    .line 11
    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->catch()Lcom/bumptech/glide/request/do;

    .line 12
    sget-object v1, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    .line 13
    new-instance v1, Lcom/wsw/cospa/utils/strictfp$if;

    invoke-direct {v1}, Lcom/wsw/cospa/utils/strictfp$if;-><init>()V

    const/4 v2, 0x0

    .line 14
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "User-Agent"

    if-nez v4, :cond_3

    .line 15
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    new-instance v6, Lcom/wsw/cospa/utils/finally$for;

    invoke-direct {v6}, Lcom/wsw/cospa/utils/finally$for;-><init>()V

    .line 16
    invoke-virtual {v6}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 17
    invoke-virtual {v4, p3, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    if-eqz p3, :cond_3

    .line 18
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 19
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 20
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    .line 21
    :cond_2
    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/wsw/cospa/utils/strictfp$if;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/strictfp$if;

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    if-eqz p4, :cond_4

    .line 22
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    .line 23
    invoke-virtual {v1, v5, p4}, Lcom/wsw/cospa/utils/strictfp$if;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/strictfp$if;

    .line 24
    :cond_4
    invoke-static {p0}, Landroid/support/v4/jh0;->this(Landroid/content/Context;)Landroid/support/v4/ph0;

    move-result-object p0

    new-instance p3, Lcom/bumptech/glide/load/model/if;

    invoke-virtual {v1}, Lcom/wsw/cospa/utils/strictfp$if;->for()Lcom/wsw/cospa/utils/strictfp;

    move-result-object p4

    invoke-direct {p3, p1, p4}, Lcom/bumptech/glide/load/model/if;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    invoke-virtual {p0, p3}, Landroid/support/v4/ph0;->m(Ljava/lang/Object;)Lcom/wsw/cospa/for;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/wsw/cospa/for;->E1(Z)Lcom/wsw/cospa/for;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/for;->J0(Lcom/bumptech/glide/request/do;)Lcom/wsw/cospa/for;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    return-void
.end method

.method public static const(Landroid/content/Context;Ljava/lang/String;Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;Ljava/util/Map;)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    const v1, 0x7f0800aa

    .line 3
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->super(I)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/load/if;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/if;

    .line 4
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->public(Lcom/bumptech/glide/load/if;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    .line 5
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    const/4 v1, 0x0

    .line 6
    new-instance v2, Lcom/wsw/cospa/utils/strictfp$if;

    invoke-direct {v2}, Lcom/wsw/cospa/utils/strictfp$if;-><init>()V

    const-string v3, "User-Agent"

    if-eqz p3, :cond_2

    .line 7
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 8
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    .line 10
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/wsw/cospa/utils/strictfp$if;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/strictfp$if;

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 11
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, v3, p3}, Lcom/wsw/cospa/utils/strictfp$if;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/strictfp$if;

    .line 12
    :cond_3
    invoke-static {p0}, Landroid/support/v4/jh0;->this(Landroid/content/Context;)Landroid/support/v4/ph0;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/support/v4/ph0;->b()Lcom/wsw/cospa/for;

    move-result-object p0

    new-instance p3, Lcom/bumptech/glide/load/model/if;

    .line 14
    invoke-virtual {v2}, Lcom/wsw/cospa/utils/strictfp$if;->for()Lcom/wsw/cospa/utils/strictfp;

    move-result-object v1

    invoke-direct {p3, p1, v1}, Lcom/bumptech/glide/load/model/if;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    invoke-virtual {p0, p3}, Lcom/wsw/cospa/for;->l1(Ljava/lang/Object;)Lcom/wsw/cospa/for;

    move-result-object p0

    .line 15
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/for;->J0(Lcom/bumptech/glide/request/do;)Lcom/wsw/cospa/for;

    move-result-object p0

    new-instance p1, Lcom/wsw/cospa/utils/finally$if;

    const/high16 p3, -0x80000000

    invoke-direct {p1, p3, p3, p2}, Lcom/wsw/cospa/utils/finally$if;-><init>(IILcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/else;->j0(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public static do(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/support/v4/h30;->case(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/support/v4/dn1;

    invoke-direct {v1}, Landroid/support/v4/dn1;-><init>()V

    div-int/lit8 p3, p3, 0x4

    mul-int/lit8 p3, p3, 0x3

    .line 3
    invoke-virtual {v1, p3, p3}, Lcom/bumptech/glide/request/do;->z(II)Lcom/bumptech/glide/request/do;

    move-result-object p3

    check-cast p3, Landroid/support/v4/dn1;

    .line 4
    invoke-virtual {p3}, Lcom/bumptech/glide/request/do;->for()Lcom/bumptech/glide/request/do;

    move-result-object p3

    check-cast p3, Landroid/support/v4/dn1;

    .line 5
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/do;->B(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object p3

    check-cast p3, Landroid/support/v4/dn1;

    .line 6
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/do;->throw(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object p3

    check-cast p3, Landroid/support/v4/dn1;

    sget-object v0, Lcom/bumptech/glide/try;->HIGH:Lcom/bumptech/glide/try;

    .line 7
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/do;->C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;

    move-result-object p3

    check-cast p3, Landroid/support/v4/dn1;

    sget-object v0, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    .line 8
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object p3

    check-cast p3, Landroid/support/v4/dn1;

    .line 9
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->abstract(Landroid/content/Context;)Lcom/bumptech/glide/goto;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/goto;->new()Lcom/bumptech/glide/else;

    move-result-object p0

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/else;->E0(F)Lcom/bumptech/glide/else;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/else;->v0(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    return-void
.end method

.method public static else(Landroid/content/Context;[BLandroid/widget/ImageView;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->for()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    const v1, 0x7f0801bb

    .line 3
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->A(I)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 4
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->super(I)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/try;->HIGH:Lcom/bumptech/glide/try;

    .line 5
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    .line 6
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 7
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->abstract(Landroid/content/Context;)Lcom/bumptech/glide/goto;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/goto;->throws([B)Lcom/bumptech/glide/else;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    return-void
.end method

.method public static final(Landroid/content/Context;[BLandroid/widget/ImageView;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->for()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/try;->HIGH:Lcom/bumptech/glide/try;

    .line 3
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    .line 4
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 5
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->abstract(Landroid/content/Context;)Lcom/bumptech/glide/goto;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/goto;->throws([B)Lcom/bumptech/glide/else;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    return-void
.end method

.method public static for(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/support/v4/h30;->case(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/support/v4/dn1;

    invoke-direct {v1}, Landroid/support/v4/dn1;-><init>()V

    .line 3
    invoke-virtual {v1}, Lcom/bumptech/glide/request/do;->for()Lcom/bumptech/glide/request/do;

    move-result-object v1

    check-cast v1, Landroid/support/v4/dn1;

    .line 4
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/do;->B(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object v1

    check-cast v1, Landroid/support/v4/dn1;

    .line 5
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/do;->throw(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/try;->HIGH:Lcom/bumptech/glide/try;

    .line 6
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    new-instance v1, Landroid/support/v4/kh0;

    invoke-direct {v1}, Landroid/support/v4/kh0;-><init>()V

    .line 7
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->N(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    .line 8
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 9
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->abstract(Landroid/content/Context;)Lcom/bumptech/glide/goto;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/goto;->static(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    return-void
.end method

.method public static goto(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/support/v4/h30;->case(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/support/v4/dn1;

    invoke-direct {v1}, Landroid/support/v4/dn1;-><init>()V

    .line 3
    invoke-virtual {v1}, Lcom/bumptech/glide/request/do;->for()Lcom/bumptech/glide/request/do;

    move-result-object v1

    check-cast v1, Landroid/support/v4/dn1;

    .line 4
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/do;->B(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object v1

    check-cast v1, Landroid/support/v4/dn1;

    .line 5
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/do;->throw(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/try;->HIGH:Lcom/bumptech/glide/try;

    .line 6
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    .line 7
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 8
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->abstract(Landroid/content/Context;)Lcom/bumptech/glide/goto;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/goto;->static(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    return-void
.end method

.method public static if(Landroid/content/Context;ILandroid/widget/ImageView;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/support/v4/h30;->case(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/support/v4/dn1;

    invoke-direct {v1}, Landroid/support/v4/dn1;-><init>()V

    .line 3
    invoke-virtual {v1}, Lcom/bumptech/glide/request/do;->for()Lcom/bumptech/glide/request/do;

    move-result-object v1

    check-cast v1, Landroid/support/v4/dn1;

    .line 4
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/do;->B(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object v1

    check-cast v1, Landroid/support/v4/dn1;

    .line 5
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/do;->throw(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/try;->HIGH:Lcom/bumptech/glide/try;

    .line 6
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    new-instance v1, Landroid/support/v4/kh0;

    invoke-direct {v1}, Landroid/support/v4/kh0;-><init>()V

    .line 7
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->N(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    .line 8
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 9
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->abstract(Landroid/content/Context;)Lcom/bumptech/glide/goto;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/goto;->public(Ljava/lang/Integer;)Lcom/bumptech/glide/else;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    return-void
.end method

.method public static new(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    .line 3
    invoke-virtual {v0, p3, p4}, Lcom/bumptech/glide/request/do;->z(II)Lcom/bumptech/glide/request/do;

    const p3, 0x7f0801bb

    .line 4
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/request/do;->A(I)Lcom/bumptech/glide/request/do;

    .line 5
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/request/do;->super(I)Lcom/bumptech/glide/request/do;

    .line 6
    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->native()Lcom/bumptech/glide/request/do;

    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->break()Lcom/bumptech/glide/request/do;

    .line 8
    sget-object p3, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    .line 9
    new-instance p3, Lcom/wsw/cospa/utils/strictfp$if;

    invoke-direct {p3}, Lcom/wsw/cospa/utils/strictfp$if;-><init>()V

    const/4 p4, 0x0

    .line 10
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "User-Agent"

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 11
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/wsw/cospa/utils/finally$new;

    invoke-direct {v4}, Lcom/wsw/cospa/utils/finally$new;-><init>()V

    .line 12
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 13
    invoke-virtual {v1, p5, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map;

    if-eqz p5, :cond_2

    .line 14
    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 15
    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 16
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 p4, 0x1

    .line 17
    :cond_1
    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p3, v4, v5}, Lcom/wsw/cospa/utils/strictfp$if;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/strictfp$if;

    goto :goto_0

    :cond_2
    if-nez p4, :cond_3

    if-eqz p6, :cond_3

    .line 18
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_3

    .line 19
    invoke-virtual {p3, v2, p6}, Lcom/wsw/cospa/utils/strictfp$if;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/strictfp$if;

    .line 20
    :cond_3
    invoke-static {p0}, Landroid/support/v4/jh0;->this(Landroid/content/Context;)Landroid/support/v4/ph0;

    move-result-object p0

    new-instance p4, Lcom/bumptech/glide/load/model/if;

    invoke-virtual {p3}, Lcom/wsw/cospa/utils/strictfp$if;->for()Lcom/wsw/cospa/utils/strictfp;

    move-result-object p3

    invoke-direct {p4, p1, p3}, Lcom/bumptech/glide/load/model/if;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    invoke-virtual {p0, p4}, Landroid/support/v4/ph0;->m(Ljava/lang/Object;)Lcom/wsw/cospa/for;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/wsw/cospa/for;->E1(Z)Lcom/wsw/cospa/for;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/for;->J0(Lcom/bumptech/glide/request/do;)Lcom/wsw/cospa/for;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    return-void
.end method

.method public static super(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ILjava/lang/String;)V
    .locals 0

    .line 1
    new-instance p4, Landroid/support/v4/so1;

    invoke-direct {p4, p3}, Landroid/support/v4/so1;-><init>(I)V

    .line 2
    invoke-static {p4}, Landroid/support/v4/dn1;->W(Lcom/bumptech/glide/load/Transformation;)Landroid/support/v4/dn1;

    move-result-object p3

    .line 3
    invoke-virtual {p3}, Lcom/bumptech/glide/request/do;->for()Lcom/bumptech/glide/request/do;

    move-result-object p3

    check-cast p3, Landroid/support/v4/dn1;

    const p4, 0x7f0801bb

    .line 4
    invoke-virtual {p3, p4}, Lcom/bumptech/glide/request/do;->A(I)Lcom/bumptech/glide/request/do;

    move-result-object p3

    check-cast p3, Landroid/support/v4/dn1;

    .line 5
    invoke-virtual {p3, p4}, Lcom/bumptech/glide/request/do;->super(I)Lcom/bumptech/glide/request/do;

    move-result-object p3

    check-cast p3, Landroid/support/v4/dn1;

    sget-object p4, Lcom/bumptech/glide/try;->HIGH:Lcom/bumptech/glide/try;

    .line 6
    invoke-virtual {p3, p4}, Lcom/bumptech/glide/request/do;->C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;

    move-result-object p3

    check-cast p3, Landroid/support/v4/dn1;

    sget-object p4, Lcom/bumptech/glide/load/if;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/if;

    .line 7
    invoke-virtual {p3, p4}, Lcom/bumptech/glide/request/do;->public(Lcom/bumptech/glide/load/if;)Lcom/bumptech/glide/request/do;

    move-result-object p3

    check-cast p3, Landroid/support/v4/dn1;

    sget-object p4, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    .line 8
    invoke-virtual {p3, p4}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object p3

    check-cast p3, Landroid/support/v4/dn1;

    .line 9
    invoke-static {p0}, Landroid/support/v4/jh0;->this(Landroid/content/Context;)Landroid/support/v4/ph0;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->n(Ljava/lang/String;)Lcom/wsw/cospa/for;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/wsw/cospa/for;->J0(Lcom/bumptech/glide/request/do;)Lcom/wsw/cospa/for;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    return-void
.end method

.method public static this(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p3, p3}, Landroid/support/v4/h30;->new(III)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p3

    .line 2
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->for()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 4
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/request/do;->B(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 5
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/request/do;->throw(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object p3

    check-cast p3, Landroid/support/v4/dn1;

    sget-object v0, Lcom/bumptech/glide/try;->HIGH:Lcom/bumptech/glide/try;

    .line 6
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/do;->C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;

    move-result-object p3

    check-cast p3, Landroid/support/v4/dn1;

    sget-object v0, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    .line 7
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object p3

    check-cast p3, Landroid/support/v4/dn1;

    .line 8
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->abstract(Landroid/content/Context;)Lcom/bumptech/glide/goto;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/goto;->static(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    return-void
.end method

.method public static try(Landroid/content/Context;ILandroid/widget/ImageView;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->for()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    const v1, 0x7f0801bb

    .line 3
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->A(I)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 4
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->super(I)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/try;->HIGH:Lcom/bumptech/glide/try;

    .line 5
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    .line 6
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 7
    invoke-static {p0}, Landroid/support/v4/jh0;->this(Landroid/content/Context;)Landroid/support/v4/ph0;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->l(Ljava/lang/Integer;)Lcom/wsw/cospa/for;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/for;->J0(Lcom/bumptech/glide/request/do;)Lcom/wsw/cospa/for;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    return-void
.end method
