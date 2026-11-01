.class Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->return(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Lcom/wsw/cospa/bean/ComicContentImgBean;Ljava/lang/String;Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/bean/ComicContentImgBean;

.field public final synthetic for:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Z

.field public final synthetic try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;Lcom/wsw/cospa/bean/ComicContentImgBean;Ljava/lang/String;Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    iput-object p2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;->do:Lcom/wsw/cospa/bean/ComicContentImgBean;

    iput-object p3, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;->if:Ljava/lang/String;

    iput-object p4, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;->for:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iput-boolean p5, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;->new:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    const v1, 0x7f0800aa

    .line 2
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->super(I)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/load/if;->PREFER_RGB_565:Lcom/bumptech/glide/load/if;

    .line 3
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->public(Lcom/bumptech/glide/load/if;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/load/engine/case;->for:Lcom/bumptech/glide/load/engine/case;

    .line 4
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->break()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 6
    new-instance v1, Lcom/wsw/cospa/utils/strictfp$if;

    invoke-direct {v1}, Lcom/wsw/cospa/utils/strictfp$if;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;->do:Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getVariableMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "User-Agent"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 9
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v7, v4}, Lcom/wsw/cospa/utils/strictfp$if;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/strictfp$if;

    move v4, v6

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    .line 12
    iget-object v2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->const(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v2

    invoke-static {v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->getDefaultUserAgent(Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 14
    invoke-virtual {v1, v3, v2}, Lcom/wsw/cospa/utils/strictfp$if;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/strictfp$if;

    .line 15
    :cond_1
    iget-object v2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/jh0;->this(Landroid/content/Context;)Landroid/support/v4/ph0;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/support/v4/ph0;->d()Lcom/wsw/cospa/for;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/case;->for:Lcom/bumptech/glide/load/engine/case;

    .line 17
    invoke-virtual {v2, v3}, Lcom/wsw/cospa/for;->Q0(Lcom/bumptech/glide/load/engine/case;)Lcom/wsw/cospa/for;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/load/model/if;

    iget-object v4, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;->if:Ljava/lang/String;

    .line 18
    invoke-virtual {v1}, Lcom/wsw/cospa/utils/strictfp$if;->for()Lcom/wsw/cospa/utils/strictfp;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/bumptech/glide/load/model/if;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/for;->l1(Ljava/lang/Object;)Lcom/wsw/cospa/for;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Lcom/wsw/cospa/for;->J0(Lcom/bumptech/glide/request/do;)Lcom/wsw/cospa/for;

    move-result-object v3

    .line 20
    new-instance v2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;

    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;-><init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;)V

    .line 21
    iget-object v4, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;->for:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v5, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;->do:Lcom/wsw/cospa/bean/ComicContentImgBean;

    iget-object v6, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;->if:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;->new:Z

    invoke-virtual/range {v2 .. v7}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->goto(Lcom/wsw/cospa/for;Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Lcom/wsw/cospa/bean/ComicContentImgBean;Ljava/lang/String;Z)Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->new(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;)V

    return-void
.end method
