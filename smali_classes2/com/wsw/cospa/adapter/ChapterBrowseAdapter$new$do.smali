.class Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->catch(Ljava/io/File;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/do;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/io/File;

.field public final synthetic if:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new$do;->if:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;

    iput-object p2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new$do;->do:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new$do;->do:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new$do;->do:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new$do;->if:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->try(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;)Lcom/wsw/cospa/bean/ComicContentImgBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new$do;->if:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->case(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new$do;->do:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wsw/cospa/utils/default;->package(Ljava/lang/String;)[B

    move-result-object v4

    .line 5
    invoke-static {v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->throws(Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 8
    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new$do;->if:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;

    iget-object v2, v1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->try(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;)Lcom/wsw/cospa/bean/ComicContentImgBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getIndexPape()I

    move-result v5

    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new$do;->if:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->else(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new$do;->if:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->try(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;)Lcom/wsw/cospa/bean/ComicContentImgBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getCustomVariable()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->final(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new$do;->do:Ljava/io/File;

    invoke-static {v2, v1}, Lcom/wsw/cospa/utils/default;->private(Ljava/io/File;[B)V

    .line 13
    :cond_1
    invoke-static {v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->n(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new$do;->if:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;

    iget-object v1, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->for(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;)Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new$do;->if:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;

    invoke-static {v2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->try(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;)Lcom/wsw/cospa/bean/ComicContentImgBean;

    move-result-object v2

    iget-object v3, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new$do;->do:Ljava/io/File;

    invoke-virtual {v1, v0, v2, v3}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->interface(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Lcom/wsw/cospa/bean/ComicContentImgBean;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
