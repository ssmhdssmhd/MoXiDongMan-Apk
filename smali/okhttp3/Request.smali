.class public final Lokhttp3/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Request$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Request.kt\nokhttp3/Request\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,298:1\n1808#2,3:299\n*E\n*S KotlinDebug\n*F\n+ 1 Request.kt\nokhttp3/Request\n*L\n119#1,3:299\n*E\n"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u00011BC\u0008\u0000\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0015\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0018\u0012\u0016\u0010(\u001a\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t\u0012\u0004\u0012\u00020\u00010\'\u00a2\u0006\u0004\u0008/\u00100J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0001J%\u0010\u0007\u001a\u0004\u0018\u00018\u0000\"\u0004\u0008\u0000\u0010\u00082\u000e\u0010\n\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\t\u00a2\u0006\u0004\u0008\u0007\u0010\u000bJ\u0006\u0010\r\u001a\u00020\u000cJ\u000f\u0010\u0011\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0014\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0006\u001a\u00020\u0015H\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u0018H\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001f\u001a\u00020\u001cH\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0008\u0010 \u001a\u00020\u0002H\u0016R\u0018\u0010!\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0019\u0010\u0011\u001a\u00020\u000e8\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010#\u001a\u0004\u0008\u0011\u0010\u0010R\u0019\u0010\u0014\u001a\u00020\u00028\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010$\u001a\u0004\u0008\u0014\u0010\u0013R\u0019\u0010\u0006\u001a\u00020\u00158\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010%\u001a\u0004\u0008\u0006\u0010\u0017R\u001b\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010&\u001a\u0004\u0008\u001b\u0010\u001aR,\u0010(\u001a\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t\u0012\u0004\u0012\u00020\u00010\'8\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+R\u0013\u0010-\u001a\u00020,8F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.R\u0013\u0010\u001f\u001a\u00020\u001c8G@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u001e\u00a8\u00062"
    }
    d2 = {
        "Lokhttp3/Request;",
        "",
        "",
        "name",
        "header",
        "",
        "headers",
        "tag",
        "T",
        "Ljava/lang/Class;",
        "type",
        "(Ljava/lang/Class;)Ljava/lang/Object;",
        "Lokhttp3/Request$Builder;",
        "newBuilder",
        "Lokhttp3/HttpUrl;",
        "-deprecated_url",
        "()Lokhttp3/HttpUrl;",
        "url",
        "-deprecated_method",
        "()Ljava/lang/String;",
        "method",
        "Lokhttp3/Headers;",
        "-deprecated_headers",
        "()Lokhttp3/Headers;",
        "Lokhttp3/RequestBody;",
        "-deprecated_body",
        "()Lokhttp3/RequestBody;",
        "body",
        "Lokhttp3/CacheControl;",
        "-deprecated_cacheControl",
        "()Lokhttp3/CacheControl;",
        "cacheControl",
        "toString",
        "lazyCacheControl",
        "Lokhttp3/CacheControl;",
        "Lokhttp3/HttpUrl;",
        "Ljava/lang/String;",
        "Lokhttp3/Headers;",
        "Lokhttp3/RequestBody;",
        "",
        "tags",
        "Ljava/util/Map;",
        "getTags$okhttp",
        "()Ljava/util/Map;",
        "",
        "isHttps",
        "()Z",
        "<init>",
        "(Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/RequestBody;Ljava/util/Map;)V",
        "Builder",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final body:Lokhttp3/RequestBody;
    .annotation build Landroid/support/v4/z41;
    .end annotation
.end field

.field private final headers:Lokhttp3/Headers;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field

.field private lazyCacheControl:Lokhttp3/CacheControl;

.field private final method:Ljava/lang/String;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field

.field private final tags:Ljava/util/Map;
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Lokhttp3/HttpUrl;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/RequestBody;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lokhttp3/HttpUrl;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .param p3    # Lokhttp3/Headers;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .param p4    # Lokhttp3/RequestBody;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Ljava/lang/String;",
            "Lokhttp3/Headers;",
            "Lokhttp3/RequestBody;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    iput-object p2, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    iput-object p3, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    iput-object p4, p0, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    iput-object p5, p0, Lokhttp3/Request;->tags:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/RequestBody;
    .locals 1
    .annotation build Landroid/support/v4/wp0;
        name = "-deprecated_body"
    .end annotation

    .annotation build Landroid/support/v4/z41;
    .end annotation

    .annotation runtime Lkotlin/for;
        level = .enum Lkotlin/try;->ERROR:Lkotlin/try;
        message = "moved to val"
        replaceWith = .subannotation Landroid/support/v4/an1;
            expression = "body"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    return-object v0
.end method

.method public final b()Lokhttp3/CacheControl;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/wp0;
        name = "-deprecated_cacheControl"
    .end annotation

    .annotation runtime Lkotlin/for;
        level = .enum Lkotlin/try;->ERROR:Lkotlin/try;
        message = "moved to val"
        replaceWith = .subannotation Landroid/support/v4/an1;
            expression = "cacheControl"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    return-object v0
.end method

.method public final body()Lokhttp3/RequestBody;
    .locals 1
    .annotation build Landroid/support/v4/wp0;
        name = "body"
    .end annotation

    .annotation build Landroid/support/v4/z41;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    return-object v0
.end method

.method public final c()Lokhttp3/Headers;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/wp0;
        name = "-deprecated_headers"
    .end annotation

    .annotation runtime Lkotlin/for;
        level = .enum Lkotlin/try;->ERROR:Lkotlin/try;
        message = "moved to val"
        replaceWith = .subannotation Landroid/support/v4/an1;
            expression = "headers"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public final cacheControl()Lokhttp3/CacheControl;
    .locals 2
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/wp0;
        name = "cacheControl"
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Request;->lazyCacheControl:Lokhttp3/CacheControl;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lokhttp3/CacheControl;->Companion:Lokhttp3/CacheControl$Companion;

    iget-object v1, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, v1}, Lokhttp3/CacheControl$Companion;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lokhttp3/Request;->lazyCacheControl:Lokhttp3/CacheControl;

    :cond_0
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/wp0;
        name = "-deprecated_method"
    .end annotation

    .annotation runtime Lkotlin/for;
        level = .enum Lkotlin/try;->ERROR:Lkotlin/try;
        message = "moved to val"
        replaceWith = .subannotation Landroid/support/v4/an1;
            expression = "method"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lokhttp3/HttpUrl;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/wp0;
        name = "-deprecated_url"
    .end annotation

    .annotation runtime Lkotlin/for;
        level = .enum Lkotlin/try;->ERROR:Lkotlin/try;
        message = "moved to val"
        replaceWith = .subannotation Landroid/support/v4/an1;
            expression = "url"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    return-object v0
.end method

.method public final getTags$okhttp()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Request;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public final header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/z41;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final headers()Lokhttp3/Headers;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/wp0;
        name = "headers"
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public final isHttps()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v0

    return v0
.end method

.method public final method()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/wp0;
        name = "method"
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final newBuilder()Lokhttp3/Request$Builder;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0, p0}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    return-object v0
.end method

.method public final tag()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/v4/z41;
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lokhttp3/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final tag(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/z41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lokhttp3/Request;->tags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", headers=["

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    const/4 v2, 0x0

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/final;->j()V

    :cond_0
    check-cast v3, Landroid/support/v4/qb1;

    invoke-virtual {v3}, Landroid/support/v4/qb1;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Landroid/support/v4/qb1;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-lez v2, :cond_1

    const-string v2, ", "

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_0

    :cond_2
    const/16 v1, 0x5d

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    :cond_3
    iget-object v1, p0, Lokhttp3/Request;->tags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    const-string v1, ", tags="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lokhttp3/Request;->tags:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v1, 0x7d

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final url()Lokhttp3/HttpUrl;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/wp0;
        name = "url"
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    return-object v0
.end method
