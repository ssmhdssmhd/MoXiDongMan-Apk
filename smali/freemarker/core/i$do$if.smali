.class Lfreemarker/core/i$do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/i$do;->iterator()Lfreemarker/template/TemplateModelIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private do:I

.field public final synthetic for:Ljava/util/regex/Matcher;

.field public if:Z

.field public final synthetic new:Lfreemarker/core/i$do;


# direct methods
.method public constructor <init>(Lfreemarker/core/i$do;Ljava/util/regex/Matcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/i$do$if;->new:Lfreemarker/core/i$do;

    iput-object p2, p0, Lfreemarker/core/i$do$if;->for:Ljava/util/regex/Matcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lfreemarker/core/i$do$if;->do:I

    .line 3
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    iput-boolean p1, p0, Lfreemarker/core/i$do$if;->if:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/i$do$if;->new:Lfreemarker/core/i$do;

    invoke-static {v0}, Lfreemarker/core/i$do;->do(Lfreemarker/core/i$do;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lfreemarker/core/i$do$if;->if:Z

    return v0

    .line 3
    :cond_0
    iget v1, p0, Lfreemarker/core/i$do$if;->do:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lfreemarker/template/TemplateModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/i$do$if;->new:Lfreemarker/core/i$do;

    invoke-static {v0}, Lfreemarker/core/i$do;->do(Lfreemarker/core/i$do;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "There were no more regular expression matches"

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lfreemarker/core/i$do$if;->if:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lfreemarker/core/i$do$new;

    iget-object v1, p0, Lfreemarker/core/i$do$if;->new:Lfreemarker/core/i$do;

    iget-object v1, v1, Lfreemarker/core/i$do;->if:Ljava/lang/String;

    iget-object v2, p0, Lfreemarker/core/i$do$if;->for:Ljava/util/regex/Matcher;

    invoke-direct {v0, v1, v2}, Lfreemarker/core/i$do$new;-><init>(Ljava/lang/String;Ljava/util/regex/Matcher;)V

    .line 4
    iget v1, p0, Lfreemarker/core/i$do$if;->do:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfreemarker/core/i$do$if;->do:I

    .line 5
    iget-object v1, p0, Lfreemarker/core/i$do$if;->for:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    iput-boolean v1, p0, Lfreemarker/core/i$do$if;->if:Z

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Landroid/support/v4/vl2;

    invoke-direct {v0, v1}, Landroid/support/v4/vl2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    :try_start_0
    iget v2, p0, Lfreemarker/core/i$do$if;->do:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lfreemarker/core/i$do$if;->do:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateModel;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    new-instance v2, Landroid/support/v4/vl2;

    invoke-direct {v2, v0, v1}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v2
.end method
