.class public Lfreemarker/cache/import;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/cache/import$for;,
        Lfreemarker/cache/import$new;,
        Lfreemarker/cache/import$if;,
        Lfreemarker/cache/import$try;
    }
.end annotation


# static fields
.field public static final break:J = 0x1388L

.field private static final catch:Ljava/lang/String; = "*"

.field private static final class:C = '*'

.field private static final const:C = '/'

.field private static final final:Ljava/lang/String; = "_"

.field private static final super:Lfreemarker/log/if;

.field private static final throw:Ljava/lang/reflect/Method;


# instance fields
.field private final case:Z

.field private final do:Lfreemarker/cache/TemplateLoader;

.field private else:J

.field private final for:Lfreemarker/cache/switch;

.field private goto:Z

.field private final if:Lfreemarker/cache/CacheStorage;

.field private final new:Lfreemarker/cache/throws;

.field private this:Lfreemarker/template/do;

.field private final try:Lfreemarker/cache/native;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "freemarker.cache"

    .line 1
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/cache/import;->super:Lfreemarker/log/if;

    .line 2
    invoke-static {}, Lfreemarker/cache/import;->catch()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfreemarker/cache/import;->throw:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/template/do;->h3:Landroid/support/v4/we2;

    invoke-static {v0}, Landroid/support/v4/ul2;->new(Landroid/support/v4/we2;)Lfreemarker/cache/TemplateLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/cache/import;-><init>(Lfreemarker/cache/TemplateLoader;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/cache/TemplateLoader;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lfreemarker/cache/import;-><init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/template/do;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/cache/import;-><init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/template/do;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/switch;Lfreemarker/cache/throws;Lfreemarker/cache/native;Lfreemarker/template/do;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    .line 11
    iput-wide v0, p0, Lfreemarker/cache/import;->else:J

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lfreemarker/cache/import;->goto:Z

    .line 13
    iput-object p1, p0, Lfreemarker/cache/import;->do:Lfreemarker/cache/TemplateLoader;

    const-string p1, "cacheStorage"

    .line 14
    invoke-static {p1, p2}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    iput-object p2, p0, Lfreemarker/cache/import;->if:Lfreemarker/cache/CacheStorage;

    .line 16
    instance-of p1, p2, Lfreemarker/cache/ConcurrentCacheStorage;

    if-eqz p1, :cond_0

    check-cast p2, Lfreemarker/cache/ConcurrentCacheStorage;

    .line 17
    invoke-interface {p2}, Lfreemarker/cache/ConcurrentCacheStorage;->isConcurrent()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lfreemarker/cache/import;->case:Z

    const-string p1, "templateLookupStrategy"

    .line 18
    invoke-static {p1, p3}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    iput-object p3, p0, Lfreemarker/cache/import;->for:Lfreemarker/cache/switch;

    const-string p1, "templateNameFormat"

    .line 20
    invoke-static {p1, p4}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    iput-object p4, p0, Lfreemarker/cache/import;->new:Lfreemarker/cache/throws;

    .line 22
    iput-object p5, p0, Lfreemarker/cache/import;->try:Lfreemarker/cache/native;

    .line 23
    iput-object p6, p0, Lfreemarker/cache/import;->this:Lfreemarker/template/do;

    return-void
.end method

.method public constructor <init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/switch;Lfreemarker/cache/throws;Lfreemarker/template/do;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 9
    invoke-direct/range {v0 .. v6}, Lfreemarker/cache/import;-><init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/switch;Lfreemarker/cache/throws;Lfreemarker/cache/native;Lfreemarker/template/do;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/template/do;)V
    .locals 7

    .line 5
    sget-object v0, Lfreemarker/template/do;->h3:Landroid/support/v4/we2;

    .line 6
    invoke-static {v0}, Landroid/support/v4/ul2;->catch(Landroid/support/v4/we2;)Lfreemarker/cache/switch;

    move-result-object v4

    .line 7
    invoke-static {v0}, Landroid/support/v4/ul2;->class(Landroid/support/v4/we2;)Lfreemarker/cache/throws;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    .line 8
    invoke-direct/range {v1 .. v6}, Lfreemarker/cache/import;-><init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/switch;Lfreemarker/cache/throws;Lfreemarker/template/do;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/template/do;)V
    .locals 1

    .line 4
    sget-object v0, Lfreemarker/template/do;->h3:Landroid/support/v4/we2;

    invoke-static {v0}, Landroid/support/v4/ul2;->for(Landroid/support/v4/we2;)Lfreemarker/cache/CacheStorage;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lfreemarker/cache/import;-><init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/template/do;)V

    return-void
.end method

.method private abstract(Lfreemarker/cache/import$try;Lfreemarker/cache/import$if;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lfreemarker/cache/import;->case:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/cache/import;->if:Lfreemarker/cache/CacheStorage;

    invoke-interface {v0, p1, p2}, Lfreemarker/cache/CacheStorage;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/cache/import;->if:Lfreemarker/cache/CacheStorage;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lfreemarker/cache/import;->if:Lfreemarker/cache/CacheStorage;

    invoke-interface {v1, p1, p2}, Lfreemarker/cache/CacheStorage;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static break(Lfreemarker/core/d0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/d0;->x3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/support/v4/fx0; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static case()Lfreemarker/cache/TemplateLoader;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/template/do;->h3:Landroid/support/v4/we2;

    invoke-static {v0}, Landroid/support/v4/ul2;->new(Landroid/support/v4/we2;)Lfreemarker/cache/TemplateLoader;

    move-result-object v0

    return-object v0
.end method

.method private static final catch()Ljava/lang/reflect/Method;
    .locals 5

    .line 1
    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "initCause"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private continue(Lfreemarker/cache/import$try;Lfreemarker/cache/import$if;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iput-object p3, p2, Lfreemarker/cache/import$if;->templateOrException:Ljava/lang/Object;

    const/4 p3, 0x0

    .line 2
    iput-object p3, p2, Lfreemarker/cache/import$if;->source:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p2, Lfreemarker/cache/import$if;->lastModified:J

    .line 4
    invoke-direct {p0, p1, p2}, Lfreemarker/cache/import;->abstract(Lfreemarker/cache/import$try;Lfreemarker/cache/import$if;)V

    return-void
.end method

.method public static synthetic do(Lfreemarker/cache/import;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfreemarker/cache/import;->goto:Z

    return p0
.end method

.method private else(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/cache/import;->do:Lfreemarker/cache/TemplateLoader;

    invoke-interface {v0, p1}, Lfreemarker/cache/TemplateLoader;->findTemplateSource(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lfreemarker/cache/import;->super:Lfreemarker/log/if;

    invoke-virtual {v1}, Lfreemarker/log/if;->throw()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TemplateLoader.findTemplateSource("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string p1, "Not found"

    goto :goto_0

    :cond_0
    const-string p1, "Found"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-direct {p0, v0}, Lfreemarker/cache/import;->switch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private for(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p2}, Lfreemarker/template/utility/super;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ", cond="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p3}, Lfreemarker/template/utility/super;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_1

    const-string p1, ", parsed)"

    goto :goto_1

    :cond_1
    const-string p1, ", unparsed]"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic if(Lfreemarker/cache/import;Ljava/lang/String;)Lfreemarker/cache/static;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/cache/import;->static(Ljava/lang/String;)Lfreemarker/cache/static;

    move-result-object p0

    return-object p0
.end method

.method private public(Lfreemarker/cache/TemplateLoader;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Lfreemarker/template/static;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v11, p4

    .line 1
    :try_start_0
    iget-object v0, v1, Lfreemarker/cache/import;->try:Lfreemarker/cache/native;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v11, v3}, Lfreemarker/cache/native;->do(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/h52;

    move-result-object v0
    :try_end_0
    .catch Landroid/support/v4/i52; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v12, v0

    if-eqz v12, :cond_3

    .line 2
    invoke-virtual {v12}, Landroid/support/v4/h52;->W0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v12}, Landroid/support/v4/h52;->R0()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object/from16 v0, p7

    .line 4
    :goto_1
    invoke-virtual {v12}, Lfreemarker/core/t;->H()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v12}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v4

    move-object v14, v0

    move-object v13, v4

    goto :goto_2

    :cond_2
    move-object/from16 v13, p5

    move-object v14, v0

    goto :goto_2

    :cond_3
    move-object/from16 v13, p5

    move-object/from16 v14, p7

    :goto_2
    if-eqz p8, :cond_5

    .line 6
    :try_start_1
    invoke-interface {v2, v3, v14}, Lfreemarker/cache/TemplateLoader;->getReader(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v15
    :try_end_1
    .catch Lfreemarker/template/static$if; {:try_start_1 .. :try_end_1} :catch_0

    .line 7
    :try_start_2
    new-instance v0, Lfreemarker/template/static;

    iget-object v8, v1, Lfreemarker/cache/import;->this:Lfreemarker/template/do;

    move-object v4, v0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v15

    move-object v9, v12

    move-object v10, v14

    invoke-direct/range {v4 .. v10}, Lfreemarker/template/static;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/do;Lfreemarker/core/ParserConfiguration;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :try_start_3
    invoke-virtual {v15}, Ljava/io/Reader;->close()V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v15}, Ljava/io/Reader;->close()V

    .line 9
    throw v0
    :try_end_3
    .catch Lfreemarker/template/static$if; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Lfreemarker/template/static$if;->getTemplateSpecifiedEncoding()Ljava/lang/String;

    move-result-object v8

    .line 11
    sget-object v0, Lfreemarker/cache/import;->super:Lfreemarker/log/if;

    invoke-virtual {v0}, Lfreemarker/log/if;->throw()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initial encoding \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" was incorrect, re-reading with \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\". Template: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    .line 13
    :cond_4
    invoke-interface {v2, v3, v8}, Lfreemarker/cache/TemplateLoader;->getReader(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v9

    .line 14
    :try_start_4
    new-instance v0, Lfreemarker/template/static;

    iget-object v6, v1, Lfreemarker/cache/import;->this:Lfreemarker/template/do;

    move-object v2, v0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v9

    move-object v7, v12

    invoke-direct/range {v2 .. v8}, Lfreemarker/template/static;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/do;Lfreemarker/core/ParserConfiguration;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 15
    invoke-virtual {v9}, Ljava/io/Reader;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual {v9}, Ljava/io/Reader;->close()V

    .line 16
    throw v0

    .line 17
    :cond_5
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/16 v4, 0x1000

    new-array v4, v4, [C

    .line 18
    invoke-interface {v2, v3, v14}, Lfreemarker/cache/TemplateLoader;->getReader(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v2

    .line 19
    :goto_3
    :try_start_5
    invoke-virtual {v2, v4}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-lez v3, :cond_6

    const/4 v5, 0x0

    .line 20
    invoke-virtual {v0, v4, v5, v3}, Ljava/io/StringWriter;->write([CII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :cond_6
    if-gez v3, :cond_8

    .line 21
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 22
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lfreemarker/cache/import;->this:Lfreemarker/template/do;

    move-object/from16 v3, p3

    invoke-static {v3, v11, v0, v2}, Lfreemarker/template/static;->l1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfreemarker/template/do;)Lfreemarker/template/static;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v14}, Lfreemarker/template/static;->y1(Ljava/lang/String;)V

    :goto_4
    if-eqz v12, :cond_7

    .line 24
    invoke-virtual {v12, v0}, Landroid/support/v4/h52;->P0(Lfreemarker/template/static;)V

    .line 25
    :cond_7
    invoke-virtual {v0, v13}, Lfreemarker/core/t;->t0(Ljava/util/Locale;)V

    move-object/from16 v5, p6

    .line 26
    invoke-virtual {v0, v5}, Lfreemarker/template/static;->x1(Ljava/lang/Object;)V

    return-object v0

    :cond_8
    :goto_5
    move-object/from16 v3, p3

    move-object/from16 v5, p6

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 27
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 28
    throw v0

    :catch_1
    move-exception v0

    const-string v2, "Error while getting TemplateConfiguration; see cause exception."

    .line 29
    invoke-direct {v1, v2, v0}, Lfreemarker/cache/import;->throws(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v0

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method private return(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)Lfreemarker/cache/static;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/cache/import;->for:Lfreemarker/cache/switch;

    new-instance v1, Lfreemarker/cache/import$new;

    invoke-direct {v1, p0, p1, p2, p3}, Lfreemarker/cache/import$new;-><init>(Lfreemarker/cache/import;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lfreemarker/cache/switch;->do(Lfreemarker/cache/return;)Lfreemarker/cache/static;

    move-result-object p1

    const-string p2, "Lookup result shouldn\'t be null"

    .line 2
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p1
.end method

.method private static(Ljava/lang/String;)Lfreemarker/cache/static;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2a

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/cache/import;->else(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lfreemarker/cache/static;->if(Ljava/lang/String;Ljava/lang/Object;)Lfreemarker/cache/static;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, "/"

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, -0x1

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "*"

    .line 7
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eq v4, v1, :cond_1

    .line 8
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 10
    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-ne v4, v1, :cond_4

    .line 11
    invoke-direct {p0, p1}, Lfreemarker/cache/import;->else(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lfreemarker/cache/static;->if(Ljava/lang/String;Ljava/lang/Object;)Lfreemarker/cache/static;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v3, v0, v4}, Lfreemarker/cache/import;->try(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lfreemarker/cache/import;->try(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 16
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    .line 18
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-direct {p0, v2}, Lfreemarker/cache/import;->else(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 20
    invoke-static {v2, v4}, Lfreemarker/cache/static;->if(Ljava/lang/String;Ljava/lang/Object;)Lfreemarker/cache/static;

    move-result-object p1

    return-object p1

    :cond_6
    if-nez p1, :cond_7

    .line 21
    invoke-static {}, Lfreemarker/cache/static;->do()Lfreemarker/cache/static;

    move-result-object p1

    return-object p1

    :cond_7
    const/16 v2, 0x2f

    add-int/lit8 p1, p1, -0x2

    .line 22
    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1
.end method

.method private strictfp(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "There was an error loading the template on an earlier attempt; see cause exception."

    .line 1
    invoke-direct {p0, v0, p1}, Lfreemarker/cache/import;->throws(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private switch(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lfreemarker/cache/import;->this:Lfreemarker/template/do;

    invoke-virtual {v0}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/we2;->intValue()I

    move-result v0

    sget v1, Landroid/support/v4/ul2;->new:I

    if-ge v0, v1, :cond_1

    return-object p1

    .line 2
    :cond_1
    instance-of v0, p1, Lfreemarker/cache/finally;

    if-eqz v0, :cond_2

    .line 3
    move-object v0, p1

    check-cast v0, Lfreemarker/cache/finally;

    .line 4
    invoke-virtual {v0}, Lfreemarker/cache/finally;->for()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lfreemarker/cache/finally;->try(Z)V

    goto :goto_0

    .line 6
    :cond_2
    instance-of v0, p1, Lfreemarker/cache/catch$do;

    if-eqz v0, :cond_3

    .line 7
    move-object v0, p1

    check-cast v0, Lfreemarker/cache/catch$do;

    invoke-virtual {v0}, Lfreemarker/cache/catch$do;->new()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/cache/import;->switch(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-object p1
.end method

.method private throw(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Lfreemarker/template/static;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v10, p0

    .line 1
    sget-object v0, Lfreemarker/cache/import;->super:Lfreemarker/log/if;

    invoke-virtual {v0}, Lfreemarker/log/if;->throw()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-direct/range {p0 .. p5}, Lfreemarker/cache/import;->for(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 3
    :goto_0
    new-instance v11, Lfreemarker/cache/import$try;

    move-object v4, v11

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Lfreemarker/cache/import$try;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 4
    iget-boolean v4, v10, Lfreemarker/cache/import;->case:Z

    if-eqz v4, :cond_1

    .line 5
    iget-object v4, v10, Lfreemarker/cache/import;->if:Lfreemarker/cache/CacheStorage;

    invoke-interface {v4, v11}, Lfreemarker/cache/CacheStorage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/cache/import$if;

    goto :goto_1

    .line 6
    :cond_1
    iget-object v4, v10, Lfreemarker/cache/import;->if:Lfreemarker/cache/CacheStorage;

    monitor-enter v4

    .line 7
    :try_start_0
    iget-object v5, v10, Lfreemarker/cache/import;->if:Lfreemarker/cache/CacheStorage;

    invoke-interface {v5, v11}, Lfreemarker/cache/CacheStorage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfreemarker/cache/import$if;

    .line 8
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v4, v5

    .line 9
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    if-eqz v4, :cond_11

    .line 10
    :try_start_1
    iget-wide v13, v4, Lfreemarker/cache/import$if;->lastChecked:J

    sub-long v13, v5, v13

    iget-wide v7, v10, Lfreemarker/cache/import;->else:J

    cmp-long v9, v13, v7

    if-gez v9, :cond_7

    if-eqz v1, :cond_2

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cached copy not yet stale; using cached."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    .line 12
    :cond_2
    iget-object v0, v4, Lfreemarker/cache/import$if;->templateOrException:Ljava/lang/Object;

    .line 13
    instance-of v1, v0, Lfreemarker/template/static;

    if-nez v1, :cond_6

    if-nez v0, :cond_3

    goto :goto_3

    .line 14
    :cond_3
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_4

    .line 15
    instance-of v1, v0, Ljava/io/IOException;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_5

    .line 16
    :try_start_2
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    invoke-direct {v10, v1}, Lfreemarker/cache/import;->strictfp(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v7, 0x1

    goto/16 :goto_e

    .line 17
    :cond_4
    :try_start_3
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    invoke-direct {v10, v1}, Lfreemarker/cache/import;->strictfp(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    const/4 v7, 0x0

    .line 18
    :goto_2
    :try_start_4
    new-instance v1, Landroid/support/v4/mc;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/mc;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception v0

    goto/16 :goto_e

    .line 19
    :cond_6
    :goto_3
    :try_start_5
    check-cast v0, Lfreemarker/template/static;

    return-object v0

    .line 20
    :cond_7
    invoke-virtual {v4}, Lfreemarker/cache/import$if;->cloneCachedTemplate()Lfreemarker/cache/import$if;

    move-result-object v4

    .line 21
    iput-wide v5, v4, Lfreemarker/cache/import$if;->lastChecked:J

    .line 22
    invoke-direct/range {p0 .. p3}, Lfreemarker/cache/import;->return(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)Lfreemarker/cache/static;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 23
    :try_start_6
    invoke-virtual {v5}, Lfreemarker/cache/static;->try()Z

    move-result v6

    if-nez v6, :cond_a

    if-eqz v1, :cond_8

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " no source found."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    .line 25
    :cond_8
    invoke-direct {v10, v11, v4, v2}, Lfreemarker/cache/import;->continue(Lfreemarker/cache/import$try;Lfreemarker/cache/import$if;Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 26
    invoke-virtual {v5}, Lfreemarker/cache/static;->try()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27
    iget-object v0, v10, Lfreemarker/cache/import;->do:Lfreemarker/cache/TemplateLoader;

    invoke-virtual {v5}, Lfreemarker/cache/static;->for()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lfreemarker/cache/TemplateLoader;->closeTemplateSource(Ljava/lang/Object;)V

    :cond_9
    return-object v2

    .line 28
    :cond_a
    :try_start_7
    invoke-virtual {v5}, Lfreemarker/cache/static;->for()Ljava/lang/Object;

    move-result-object v2

    .line 29
    iget-object v6, v10, Lfreemarker/cache/import;->do:Lfreemarker/cache/TemplateLoader;

    invoke-interface {v6, v2}, Lfreemarker/cache/TemplateLoader;->getLastModified(Ljava/lang/Object;)J

    move-result-wide v6

    .line 30
    iget-wide v8, v4, Lfreemarker/cache/import$if;->lastModified:J

    cmp-long v13, v6, v8

    if-nez v13, :cond_b

    const/4 v15, 0x1

    goto :goto_4

    :cond_b
    const/4 v15, 0x0

    .line 31
    :goto_4
    iget-object v8, v4, Lfreemarker/cache/import$if;->source:Ljava/lang/Object;

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v15, :cond_e

    if-eqz v8, :cond_e

    if-eqz v1, :cond_c

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": using cached since "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hasn\'t changed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    .line 33
    :cond_c
    invoke-direct {v10, v11, v4}, Lfreemarker/cache/import;->abstract(Lfreemarker/cache/import$try;Lfreemarker/cache/import$if;)V

    .line 34
    iget-object v0, v4, Lfreemarker/cache/import$if;->templateOrException:Ljava/lang/Object;

    check-cast v0, Lfreemarker/template/static;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 35
    invoke-virtual {v5}, Lfreemarker/cache/static;->try()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 36
    iget-object v1, v10, Lfreemarker/cache/import;->do:Lfreemarker/cache/TemplateLoader;

    invoke-virtual {v5}, Lfreemarker/cache/static;->for()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lfreemarker/cache/TemplateLoader;->closeTemplateSource(Ljava/lang/Object;)V

    :cond_d
    return-object v0

    :cond_e
    if-eqz v1, :cond_10

    if-nez v8, :cond_f

    .line 37
    :try_start_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Updating source because: sourceEquals="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", newlyFoundSource="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {v2}, Lfreemarker/template/utility/super;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cached.source="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lfreemarker/cache/import$if;->source:Ljava/lang/Object;

    .line 39
    invoke-static {v2}, Lfreemarker/template/utility/super;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    if-nez v15, :cond_10

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating source because: lastModifiedNotChanged="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", cached.lastModified="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v4, Lfreemarker/cache/import$if;->lastModified:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " != source.lastModified="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfreemarker/log/if;->for(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_10
    :goto_5
    move-object v14, v4

    move-object v13, v5

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v5

    goto/16 :goto_10

    :catch_2
    move-exception v0

    move-object v2, v5

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v2, v5

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    goto/16 :goto_10

    :catch_4
    move-exception v0

    :goto_6
    const/4 v7, 0x0

    goto/16 :goto_e

    :catch_5
    move-exception v0

    goto/16 :goto_f

    :cond_11
    if-eqz v1, :cond_12

    .line 42
    :try_start_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find template in cache for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; will try to load it."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    .line 43
    :cond_12
    new-instance v7, Lfreemarker/cache/import$if;

    invoke-direct {v7, v2}, Lfreemarker/cache/import$if;-><init>(Lfreemarker/cache/import$do;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 44
    :try_start_a
    iput-wide v5, v7, Lfreemarker/cache/import$if;->lastChecked:J

    .line 45
    invoke-direct/range {p0 .. p3}, Lfreemarker/cache/import;->return(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)Lfreemarker/cache/static;

    move-result-object v4
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 46
    :try_start_b
    invoke-virtual {v4}, Lfreemarker/cache/static;->try()Z

    move-result v5

    if-nez v5, :cond_14

    .line 47
    invoke-direct {v10, v11, v7, v2}, Lfreemarker/cache/import;->continue(Lfreemarker/cache/import$try;Lfreemarker/cache/import$if;Ljava/lang/Exception;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 48
    invoke-virtual {v4}, Lfreemarker/cache/static;->try()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 49
    iget-object v0, v10, Lfreemarker/cache/import;->do:Lfreemarker/cache/TemplateLoader;

    invoke-virtual {v4}, Lfreemarker/cache/static;->for()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lfreemarker/cache/TemplateLoader;->closeTemplateSource(Ljava/lang/Object;)V

    :cond_13
    return-object v2

    :cond_14
    const-wide/high16 v5, -0x8000000000000000L

    .line 50
    :try_start_c
    iput-wide v5, v7, Lfreemarker/cache/import$if;->lastModified:J
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-object v13, v4

    move-object v14, v7

    const-wide/high16 v6, -0x8000000000000000L

    .line 51
    :goto_7
    :try_start_d
    invoke-virtual {v13}, Lfreemarker/cache/static;->for()Ljava/lang/Object;

    move-result-object v4

    .line 52
    iput-object v4, v14, Lfreemarker/cache/import$if;->source:Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v1, :cond_15

    .line 53
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading template for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lfreemarker/template/utility/super;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    :cond_15
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, v6, v0

    if-nez v2, :cond_16

    .line 54
    iget-object v0, v10, Lfreemarker/cache/import;->do:Lfreemarker/cache/TemplateLoader;

    invoke-interface {v0, v4}, Lfreemarker/cache/TemplateLoader;->getLastModified(Ljava/lang/Object;)J

    move-result-wide v6
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v13

    goto/16 :goto_10

    :catch_6
    move-exception v0

    move-object v2, v13

    move-object v4, v14

    goto/16 :goto_6

    :catch_7
    move-exception v0

    move-object v2, v13

    move-object v4, v14

    goto/16 :goto_f

    :cond_16
    :goto_8
    move-wide v8, v6

    .line 55
    :try_start_f
    iget-object v2, v10, Lfreemarker/cache/import;->do:Lfreemarker/cache/TemplateLoader;

    .line 56
    invoke-virtual {v13}, Lfreemarker/cache/static;->new()Ljava/lang/String;

    move-result-object v5
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-object/from16 v1, p0

    move-object v3, v4

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v16, v13

    move-wide v12, v8

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 57
    :try_start_10
    invoke-direct/range {v1 .. v9}, Lfreemarker/cache/import;->public(Lfreemarker/cache/TemplateLoader;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Lfreemarker/template/static;

    move-result-object v0

    .line 58
    iput-object v0, v14, Lfreemarker/cache/import$if;->templateOrException:Ljava/lang/Object;

    .line 59
    iput-wide v12, v14, Lfreemarker/cache/import$if;->lastModified:J

    .line 60
    invoke-direct {v10, v11, v14}, Lfreemarker/cache/import;->abstract(Lfreemarker/cache/import$try;Lfreemarker/cache/import$if;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 61
    invoke-virtual/range {v16 .. v16}, Lfreemarker/cache/static;->try()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 62
    iget-object v1, v10, Lfreemarker/cache/import;->do:Lfreemarker/cache/TemplateLoader;

    invoke-virtual/range {v16 .. v16}, Lfreemarker/cache/static;->for()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lfreemarker/cache/TemplateLoader;->closeTemplateSource(Ljava/lang/Object;)V

    :cond_17
    return-object v0

    :catchall_3
    move-exception v0

    goto :goto_9

    :catch_8
    move-exception v0

    goto :goto_a

    :catch_9
    move-exception v0

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v16, v13

    :goto_9
    move-object/from16 v2, v16

    goto :goto_10

    :catch_a
    move-exception v0

    move-object/from16 v16, v13

    :goto_a
    move-object v4, v14

    move-object/from16 v2, v16

    goto/16 :goto_6

    :catch_b
    move-exception v0

    move-object/from16 v16, v13

    :goto_b
    move-object v4, v14

    move-object/from16 v2, v16

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object v2, v4

    goto :goto_10

    :catch_c
    move-exception v0

    move-object v2, v4

    goto :goto_c

    :catch_d
    move-exception v0

    move-object v2, v4

    goto :goto_d

    :catch_e
    move-exception v0

    :goto_c
    move-object v4, v7

    goto/16 :goto_6

    :catch_f
    move-exception v0

    :goto_d
    move-object v4, v7

    goto :goto_f

    :goto_e
    if-nez v7, :cond_18

    .line 63
    :try_start_11
    invoke-direct {v10, v11, v4, v0}, Lfreemarker/cache/import;->continue(Lfreemarker/cache/import$try;Lfreemarker/cache/import$if;Ljava/lang/Exception;)V

    .line 64
    :cond_18
    throw v0

    :goto_f
    if-eqz v4, :cond_19

    .line 65
    invoke-direct {v10, v11, v4, v0}, Lfreemarker/cache/import;->continue(Lfreemarker/cache/import$try;Lfreemarker/cache/import$if;Ljava/lang/Exception;)V

    .line 66
    :cond_19
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :goto_10
    if-eqz v2, :cond_1a

    .line 67
    invoke-virtual {v2}, Lfreemarker/cache/static;->try()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 68
    iget-object v1, v10, Lfreemarker/cache/import;->do:Lfreemarker/cache/TemplateLoader;

    invoke-virtual {v2}, Lfreemarker/cache/static;->for()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lfreemarker/cache/TemplateLoader;->closeTemplateSource(Ljava/lang/Object;)V

    .line 69
    :cond_1a
    throw v0

    :catchall_6
    move-exception v0

    .line 70
    :try_start_12
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto :goto_12

    :goto_11
    throw v0

    :goto_12
    goto :goto_11
.end method

.method private throws(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;
    .locals 3

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 2
    :cond_0
    sget-object v0, Lfreemarker/cache/import;->throw:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    :try_start_0
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, p1, v2

    .line 4
    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Landroid/support/v4/kb2;

    invoke-direct {p2, p1}, Landroid/support/v4/kb2;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 6
    throw p1

    .line 7
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nCaused by: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method private try(Ljava/util/List;II)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    if-ge p2, p3, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public class()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lfreemarker/cache/import;->goto:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public const(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Lfreemarker/cache/import$for;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "name"

    .line 1
    invoke-static {v0, p1}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "locale"

    .line 2
    invoke-static {v0, p2}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "encoding"

    .line 3
    invoke-static {v0, p4}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lfreemarker/cache/import;->new:Lfreemarker/cache/throws;

    invoke-virtual {v1, p1}, Lfreemarker/cache/throws;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/fx0; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    iget-object v1, p0, Lfreemarker/cache/import;->do:Lfreemarker/cache/TemplateLoader;

    if-nez v1, :cond_0

    .line 6
    new-instance p2, Lfreemarker/cache/import$for;

    const-string p3, "The TemplateLoader was null."

    invoke-direct {p2, p1, p3, v0}, Lfreemarker/cache/import$for;-><init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/cache/import$do;)V

    return-object p2

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 7
    invoke-direct/range {v2 .. v7}, Lfreemarker/cache/import;->throw(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Lfreemarker/template/static;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 8
    new-instance p1, Lfreemarker/cache/import$for;

    invoke-direct {p1, p2, v0}, Lfreemarker/cache/import$for;-><init>(Lfreemarker/template/static;Lfreemarker/cache/import$do;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lfreemarker/cache/import$for;

    invoke-direct {p2, p1, v0, v0}, Lfreemarker/cache/import$for;-><init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/cache/import$do;)V

    move-object p1, p2

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 9
    iget-object p2, p0, Lfreemarker/cache/import;->new:Lfreemarker/cache/throws;

    sget-object p3, Lfreemarker/cache/throws;->do:Lfreemarker/cache/throws;

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lfreemarker/cache/import;->this:Lfreemarker/template/do;

    .line 10
    invoke-virtual {p2}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/we2;->intValue()I

    move-result p2

    sget p3, Landroid/support/v4/ul2;->const:I

    if-ge p2, p3, :cond_2

    .line 11
    new-instance p2, Lfreemarker/cache/import$for;

    invoke-direct {p2, v0, p1, v0}, Lfreemarker/cache/import$for;-><init>(Ljava/lang/String;Landroid/support/v4/fx0;Lfreemarker/cache/import$do;)V

    return-object p2

    .line 12
    :cond_2
    throw p1
.end method

.method public default(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    if-eqz p4, :cond_3

    .line 1
    iget-object v0, p0, Lfreemarker/cache/import;->new:Lfreemarker/cache/throws;

    invoke-virtual {v0, p1}, Lfreemarker/cache/throws;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p0, Lfreemarker/cache/import;->do:Lfreemarker/cache/TemplateLoader;

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, Lfreemarker/cache/import;->super:Lfreemarker/log/if;

    invoke-virtual {v0}, Lfreemarker/log/if;->throw()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 4
    invoke-direct/range {v1 .. v6}, Lfreemarker/cache/import;->for(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v8, v1

    .line 5
    new-instance v9, Lfreemarker/cache/import$try;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lfreemarker/cache/import$try;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 6
    iget-boolean p1, p0, Lfreemarker/cache/import;->case:Z

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lfreemarker/cache/import;->if:Lfreemarker/cache/CacheStorage;

    invoke-interface {p1, v9}, Lfreemarker/cache/CacheStorage;->remove(Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lfreemarker/cache/import;->if:Lfreemarker/cache/CacheStorage;

    monitor-enter p1

    .line 9
    :try_start_0
    iget-object p2, p0, Lfreemarker/cache/import;->if:Lfreemarker/cache/CacheStorage;

    invoke-interface {p2, v9}, Lfreemarker/cache/CacheStorage;->remove(Ljava/lang/Object;)V

    .line 10
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v7, :cond_2

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " was removed from the cache, if it was there"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 12
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_2
    :goto_2
    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \"encoding\" can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \"locale\" can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \"name\" can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public extends(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lfreemarker/cache/import;->default(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public final(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Z)Lfreemarker/template/static;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lfreemarker/cache/import;->const(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Lfreemarker/cache/import$for;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/cache/import$for;->for()Lfreemarker/template/static;

    move-result-object p1

    return-object p1
.end method

.method public finally(Lfreemarker/template/do;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lfreemarker/cache/import;->this:Lfreemarker/template/do;

    .line 2
    invoke-virtual {p0}, Lfreemarker/cache/import;->new()V

    return-void
.end method

.method public goto()Lfreemarker/cache/CacheStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/import;->if:Lfreemarker/cache/CacheStorage;

    return-object v0
.end method

.method public import()Lfreemarker/cache/switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/import;->for:Lfreemarker/cache/switch;

    return-object v0
.end method

.method public native()Lfreemarker/cache/throws;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/import;->new:Lfreemarker/cache/throws;

    return-object v0
.end method

.method public new()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/cache/import;->if:Lfreemarker/cache/CacheStorage;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/cache/import;->if:Lfreemarker/cache/CacheStorage;

    invoke-interface {v1}, Lfreemarker/cache/CacheStorage;->clear()V

    .line 3
    iget-object v1, p0, Lfreemarker/cache/import;->do:Lfreemarker/cache/TemplateLoader;

    instance-of v2, v1, Lfreemarker/cache/StatefulTemplateLoader;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lfreemarker/cache/StatefulTemplateLoader;

    invoke-interface {v1}, Lfreemarker/cache/StatefulTemplateLoader;->resetState()V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public package(J)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-wide p1, p0, Lfreemarker/cache/import;->else:J

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public private(Z)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lfreemarker/cache/import;->goto:Z

    if-eq v0, p1, :cond_0

    .line 3
    iput-boolean p1, p0, Lfreemarker/cache/import;->goto:Z

    .line 4
    invoke-virtual {p0}, Lfreemarker/cache/import;->new()V

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public super()Lfreemarker/cache/native;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/import;->try:Lfreemarker/cache/native;

    return-object v0
.end method

.method public this()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lfreemarker/cache/import;->else:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public while()Lfreemarker/cache/TemplateLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/import;->do:Lfreemarker/cache/TemplateLoader;

    return-object v0
.end method
