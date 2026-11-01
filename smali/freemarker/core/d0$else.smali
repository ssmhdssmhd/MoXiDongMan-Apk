.class Lfreemarker/core/d0$else;
.super Lfreemarker/core/d0$this;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "else"
.end annotation


# instance fields
.field private final customLookupCondition:Ljava/lang/Object;

.field private final encoding:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field private status:Lfreemarker/core/d0$case;

.field private final templateName:Ljava/lang/String;

.field public final synthetic this$0:Lfreemarker/core/d0;


# direct methods
.method private constructor <init>(Lfreemarker/core/d0;Ljava/lang/String;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lfreemarker/core/d0$else;->this$0:Lfreemarker/core/d0;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lfreemarker/core/d0$this;-><init>(Lfreemarker/core/d0;Lfreemarker/template/static;)V

    .line 4
    sget-object v0, Lfreemarker/core/d0$case;->UNINITIALIZED:Lfreemarker/core/d0$case;

    iput-object v0, p0, Lfreemarker/core/d0$else;->status:Lfreemarker/core/d0$case;

    .line 5
    iput-object p2, p0, Lfreemarker/core/d0$else;->templateName:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object p2

    iput-object p2, p0, Lfreemarker/core/d0$else;->locale:Ljava/util/Locale;

    .line 7
    invoke-static {p1}, Lfreemarker/core/d0;->W0(Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lfreemarker/core/d0$else;->encoding:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lfreemarker/core/d0;->X0(Lfreemarker/core/d0;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/d0$else;->customLookupCondition:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/d0;Ljava/lang/String;Lfreemarker/core/d0$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/d0$else;-><init>(Lfreemarker/core/d0;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Lfreemarker/core/d0$else;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/core/d0$else;->if()V

    return-void
.end method

.method private do()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/d0$else;->if()V
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lfreemarker/template/TemplateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private for()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0$else;->this$0:Lfreemarker/core/d0;

    invoke-static {v0}, Lfreemarker/core/d0;->S0(Lfreemarker/core/d0;)Lfreemarker/template/do;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/d0$else;->templateName:Ljava/lang/String;

    iget-object v3, p0, Lfreemarker/core/d0$else;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lfreemarker/core/d0$else;->customLookupCondition:Ljava/lang/Object;

    iget-object v5, p0, Lfreemarker/core/d0$else;->encoding:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lfreemarker/template/do;->R1(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/static;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/d0$this;->setTemplate(Lfreemarker/template/static;)V

    .line 2
    iget-object v0, p0, Lfreemarker/core/d0$else;->this$0:Lfreemarker/core/d0;

    invoke-virtual {v0}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lfreemarker/core/d0$else;->this$0:Lfreemarker/core/d0;

    iget-object v2, p0, Lfreemarker/core/d0$else;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lfreemarker/core/d0;->t0(Ljava/util/Locale;)V

    .line 4
    iget-object v1, p0, Lfreemarker/core/d0$else;->this$0:Lfreemarker/core/d0;

    invoke-virtual {p0}, Lfreemarker/core/d0$else;->getTemplate()Lfreemarker/template/static;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lfreemarker/core/d0;->Y0(Lfreemarker/core/d0;Lfreemarker/core/d0$this;Lfreemarker/template/static;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v1, p0, Lfreemarker/core/d0$else;->this$0:Lfreemarker/core/d0;

    invoke-virtual {v1, v0}, Lfreemarker/core/d0;->t0(Ljava/util/Locale;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lfreemarker/core/d0$else;->this$0:Lfreemarker/core/d0;

    invoke-virtual {v2, v0}, Lfreemarker/core/d0;->t0(Ljava/util/Locale;)V

    .line 6
    throw v1
.end method

.method private if()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0$else;->status:Lfreemarker/core/d0$case;

    sget-object v1, Lfreemarker/core/d0$case;->INITIALIZED:Lfreemarker/core/d0$case;

    if-eq v0, v1, :cond_2

    sget-object v2, Lfreemarker/core/d0$case;->INITIALIZING:Lfreemarker/core/d0$case;

    if-eq v0, v2, :cond_2

    .line 2
    sget-object v3, Lfreemarker/core/d0$case;->FAILED:Lfreemarker/core/d0$case;

    const-string v4, "Lazy initialization of the imported namespace for "

    if-eq v0, v3, :cond_1

    .line 3
    :try_start_0
    iput-object v2, p0, Lfreemarker/core/d0$else;->status:Lfreemarker/core/d0$case;

    .line 4
    invoke-direct {p0}, Lfreemarker/core/d0$else;->for()V

    .line 5
    iput-object v1, p0, Lfreemarker/core/d0$else;->status:Lfreemarker/core/d0$case;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    :try_start_1
    new-instance v1, Landroid/support/v4/k52;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lfreemarker/core/d0$else;->templateName:Ljava/lang/String;

    .line 7
    invoke-static {v3}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has failed; see cause exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :goto_0
    iget-object v1, p0, Lfreemarker/core/d0$else;->status:Lfreemarker/core/d0$case;

    sget-object v2, Lfreemarker/core/d0$case;->INITIALIZED:Lfreemarker/core/d0$case;

    if-eq v1, v2, :cond_0

    .line 9
    sget-object v1, Lfreemarker/core/d0$case;->FAILED:Lfreemarker/core/d0$case;

    iput-object v1, p0, Lfreemarker/core/d0$else;->status:Lfreemarker/core/d0$case;

    .line 10
    :cond_0
    throw v0

    .line 11
    :cond_1
    new-instance v0, Landroid/support/v4/k52;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfreemarker/core/d0$else;->templateName:Ljava/lang/String;

    .line 12
    invoke-static {v2}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has already failed earlier; won\'t retry it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/d0$else;->do()V

    .line 2
    invoke-super {p0, p1}, Lfreemarker/template/native;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public copyMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/d0$else;->do()V

    .line 2
    invoke-super {p0, p1}, Lfreemarker/template/native;->copyMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/core/d0$else;->if()V

    .line 2
    invoke-super {p0, p1}, Lfreemarker/template/native;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public getTemplate()Lfreemarker/template/static;
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/d0$else;->do()V

    .line 2
    invoke-super {p0}, Lfreemarker/core/d0$this;->getTemplate()Lfreemarker/template/static;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/d0$else;->do()V

    .line 2
    invoke-super {p0}, Lfreemarker/template/native;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/d0$else;->do()V

    .line 2
    invoke-super {p0}, Lfreemarker/template/native;->keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/d0$else;->do()V

    .line 2
    invoke-super {p0}, Lfreemarker/template/native;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/d0$else;->do()V

    .line 2
    invoke-super {p0, p1, p2}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lfreemarker/core/d0$else;->do()V

    .line 4
    invoke-super {p0, p1, p2}, Lfreemarker/template/native;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/d0$else;->do()V

    .line 2
    invoke-super {p0, p1}, Lfreemarker/template/native;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/d0$else;->do()V

    .line 2
    invoke-super {p0, p1}, Lfreemarker/template/native;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/d0$else;->do()V

    .line 2
    invoke-super {p0}, Lfreemarker/template/native;->size()I

    move-result v0

    return v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/core/d0$else;->if()V

    .line 2
    invoke-super {p0}, Lfreemarker/template/native;->toMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/d0$else;->do()V

    .line 2
    invoke-super {p0}, Lfreemarker/template/native;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/d0$else;->do()V

    .line 2
    invoke-super {p0}, Lfreemarker/template/native;->values()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v0

    return-object v0
.end method
