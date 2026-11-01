.class public final Landroid/support/v4/pn0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/fm0;
.end annotation

.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation


# static fields
.field private static final break:I = 0xfd

.field private static final case:Lcom/google/common/base/Splitter;

.field private static final catch:I = 0x3f

.field private static final class:Lcom/google/common/base/new;

.field private static final const:Lcom/google/common/base/new;

.field private static final else:Lcom/google/common/base/final;

.field private static final final:Lcom/google/common/base/new;

.field private static final goto:I = -0x1

.field private static final super:Lcom/google/common/base/new;

.field private static final this:I = 0x7f

.field private static final try:Lcom/google/common/base/new;


# instance fields
.field private final do:Ljava/lang/String;

.field private final for:I

.field private final if:Lcom/google/common/collect/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final new:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, ".\u3002\uff0e\uff61"

    .line 1
    invoke-static {v0}, Lcom/google/common/base/new;->new(Ljava/lang/CharSequence;)Lcom/google/common/base/new;

    move-result-object v0

    sput-object v0, Landroid/support/v4/pn0;->try:Lcom/google/common/base/new;

    const/16 v0, 0x2e

    .line 2
    invoke-static {v0}, Lcom/google/common/base/Splitter;->goto(C)Lcom/google/common/base/Splitter;

    move-result-object v1

    sput-object v1, Landroid/support/v4/pn0;->case:Lcom/google/common/base/Splitter;

    .line 3
    invoke-static {v0}, Lcom/google/common/base/final;->super(C)Lcom/google/common/base/final;

    move-result-object v0

    sput-object v0, Landroid/support/v4/pn0;->else:Lcom/google/common/base/final;

    const-string v0, "-_"

    .line 4
    invoke-static {v0}, Lcom/google/common/base/new;->new(Ljava/lang/CharSequence;)Lcom/google/common/base/new;

    move-result-object v0

    sput-object v0, Landroid/support/v4/pn0;->class:Lcom/google/common/base/new;

    const/16 v1, 0x30

    const/16 v2, 0x39

    .line 5
    invoke-static {v1, v2}, Lcom/google/common/base/new;->const(CC)Lcom/google/common/base/new;

    move-result-object v1

    sput-object v1, Landroid/support/v4/pn0;->const:Lcom/google/common/base/new;

    const/16 v2, 0x61

    const/16 v3, 0x7a

    .line 6
    invoke-static {v2, v3}, Lcom/google/common/base/new;->const(CC)Lcom/google/common/base/new;

    move-result-object v2

    const/16 v3, 0x41

    const/16 v4, 0x5a

    invoke-static {v3, v4}, Lcom/google/common/base/new;->const(CC)Lcom/google/common/base/new;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/new;->protected(Lcom/google/common/base/new;)Lcom/google/common/base/new;

    move-result-object v2

    sput-object v2, Landroid/support/v4/pn0;->final:Lcom/google/common/base/new;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/common/base/new;->protected(Lcom/google/common/base/new;)Lcom/google/common/base/new;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/base/new;->protected(Lcom/google/common/base/new;)Lcom/google/common/base/new;

    move-result-object v0

    sput-object v0, Landroid/support/v4/pn0;->super:Lcom/google/common/base/new;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/support/v4/pn0;->try:Lcom/google/common/base/new;

    const/16 v1, 0x2e

    invoke-virtual {v0, p1, v1}, Lcom/google/common/base/new;->a(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/t3;->else(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xfd

    if-gt v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Domain name too long: \'%s\':"

    invoke-static {v0, v3, p1}, Landroid/support/v4/af1;->return(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 6
    iput-object p1, p0, Landroid/support/v4/pn0;->do:Ljava/lang/String;

    .line 7
    sget-object v0, Landroid/support/v4/pn0;->case:Lcom/google/common/base/Splitter;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Splitter;->final(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/v0;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/v0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/pn0;->if:Lcom/google/common/collect/v0;

    .line 8
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v2, "Domain has too many parts: \'%s\'"

    invoke-static {v1, v2, p1}, Landroid/support/v4/af1;->return(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-static {v0}, Landroid/support/v4/pn0;->throws(Ljava/util/List;)Z

    move-result v0

    const-string v1, "Not a valid domain name: \'%s\'"

    invoke-static {v0, v1, p1}, Landroid/support/v4/af1;->return(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Lcom/google/common/base/while;->absent()Lcom/google/common/base/while;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/pn0;->for(Lcom/google/common/base/while;)I

    move-result p1

    iput p1, p0, Landroid/support/v4/pn0;->for:I

    .line 11
    sget-object p1, Lcom/google/thirdparty/publicsuffix/if;->REGISTRY:Lcom/google/thirdparty/publicsuffix/if;

    invoke-static {p1}, Lcom/google/common/base/while;->of(Ljava/lang/Object;)Lcom/google/common/base/while;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/pn0;->for(Lcom/google/common/base/while;)I

    move-result p1

    iput p1, p0, Landroid/support/v4/pn0;->new:I

    return-void
.end method

.method private do(I)Landroid/support/v4/pn0;
    .locals 3

    .line 1
    sget-object v0, Landroid/support/v4/pn0;->else:Lcom/google/common/base/final;

    iget-object v1, p0, Landroid/support/v4/pn0;->if:Lcom/google/common/collect/v0;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/google/common/collect/v0;->subList(II)Lcom/google/common/collect/v0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/base/final;->catch(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/pn0;->new(Ljava/lang/String;)Landroid/support/v4/pn0;

    move-result-object p1

    return-object p1
.end method

.method public static final(Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/pn0;->new(Ljava/lang/String;)Landroid/support/v4/pn0;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private for(Lcom/google/common/base/while;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/while<",
            "Lcom/google/thirdparty/publicsuffix/if;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/pn0;->if:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2
    sget-object v2, Landroid/support/v4/pn0;->else:Lcom/google/common/base/final;

    iget-object v3, p0, Landroid/support/v4/pn0;->if:Lcom/google/common/collect/v0;

    invoke-virtual {v3, v1, v0}, Lcom/google/common/collect/v0;->subList(II)Lcom/google/common/collect/v0;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/final;->catch(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/google/thirdparty/publicsuffix/do;->do:Lcom/google/common/collect/x0;

    .line 4
    invoke-virtual {v3, v2}, Lcom/google/common/collect/x0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/while;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/while;

    move-result-object v3

    .line 5
    invoke-static {p1, v3}, Landroid/support/v4/pn0;->super(Lcom/google/common/base/while;Lcom/google/common/base/while;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    .line 6
    :cond_0
    sget-object v3, Lcom/google/thirdparty/publicsuffix/do;->for:Lcom/google/common/collect/x0;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/x0;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    return v1

    .line 7
    :cond_1
    invoke-static {p1, v2}, Landroid/support/v4/pn0;->throw(Lcom/google/common/base/while;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public static new(Ljava/lang/String;)Landroid/support/v4/pn0;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/pn0;

    invoke-static {p0}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Landroid/support/v4/pn0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static super(Lcom/google/common/base/while;Lcom/google/common/base/while;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/while<",
            "Lcom/google/thirdparty/publicsuffix/if;",
            ">;",
            "Lcom/google/common/base/while<",
            "Lcom/google/thirdparty/publicsuffix/if;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/base/while;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/base/while;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/common/base/while;->isPresent()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static switch(Ljava/lang/String;Z)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x3f

    if-le v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/common/base/new;->case()Lcom/google/common/base/new;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/new;->c(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v3, Landroid/support/v4/pn0;->super:Lcom/google/common/base/new;

    invoke-virtual {v3, v0}, Lcom/google/common/base/new;->private(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 4
    :cond_1
    sget-object v0, Landroid/support/v4/pn0;->class:Lcom/google/common/base/new;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/common/base/new;->package(C)Z

    move-result v3

    if-nez v3, :cond_4

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/common/base/new;->package(C)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 6
    sget-object p1, Landroid/support/v4/pn0;->const:Lcom/google/common/base/new;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/common/base/new;->package(C)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method private static throw(Lcom/google/common/base/while;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/while<",
            "Lcom/google/thirdparty/publicsuffix/if;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/pn0;->case:Lcom/google/common/base/Splitter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/base/Splitter;->case(I)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/Splitter;->super(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/thirdparty/publicsuffix/do;->if:Lcom/google/common/collect/x0;

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/while;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/while;

    move-result-object p1

    .line 4
    invoke-static {p0, p1}, Landroid/support/v4/pn0;->super(Lcom/google/common/base/while;Lcom/google/common/base/while;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static throws(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/support/v4/pn0;->switch(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4
    invoke-static {v4, v3}, Landroid/support/v4/pn0;->switch(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public break()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/pn0;->new:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public case()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/pn0;->for:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public catch()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/pn0;->for:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public class()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/pn0;->for:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public const()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/pn0;->new:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public else()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/pn0;->new:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Landroid/support/v4/pn0;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Landroid/support/v4/pn0;

    .line 3
    iget-object v0, p0, Landroid/support/v4/pn0;->do:Ljava/lang/String;

    iget-object p1, p1, Landroid/support/v4/pn0;->do:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public goto()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/pn0;->for:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/pn0;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public if(Ljava/lang/String;)Landroid/support/v4/pn0;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v4/pn0;->do:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/pn0;->new(Ljava/lang/String;)Landroid/support/v4/pn0;

    move-result-object p1

    return-object p1
.end method

.method public import()Lcom/google/common/collect/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/pn0;->if:Lcom/google/common/collect/v0;

    return-object v0
.end method

.method public native()Landroid/support/v4/pn0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/pn0;->case()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/pn0;->for:I

    invoke-direct {p0, v0}, Landroid/support/v4/pn0;->do(I)Landroid/support/v4/pn0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public public()Landroid/support/v4/pn0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/pn0;->else()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/pn0;->new:I

    invoke-direct {p0, v0}, Landroid/support/v4/pn0;->do(I)Landroid/support/v4/pn0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public return()Landroid/support/v4/pn0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/pn0;->break()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/pn0;->const()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/pn0;->do:Ljava/lang/String;

    const-string v2, "Not under a registry suffix: %s"

    invoke-static {v0, v2, v1}, Landroid/support/v4/af1;->K(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget v0, p0, Landroid/support/v4/pn0;->new:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/v4/pn0;->do(I)Landroid/support/v4/pn0;

    move-result-object v0

    return-object v0
.end method

.method public static()Landroid/support/v4/pn0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/pn0;->catch()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/pn0;->class()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/pn0;->do:Ljava/lang/String;

    const-string v2, "Not under a public suffix: %s"

    invoke-static {v0, v2, v1}, Landroid/support/v4/af1;->K(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget v0, p0, Landroid/support/v4/pn0;->for:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/v4/pn0;->do(I)Landroid/support/v4/pn0;

    move-result-object v0

    return-object v0
.end method

.method public this()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/pn0;->new:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/pn0;->do:Ljava/lang/String;

    return-object v0
.end method

.method public try()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/pn0;->if:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public while()Landroid/support/v4/pn0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/pn0;->try()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/pn0;->do:Ljava/lang/String;

    const-string v2, "Domain \'%s\' has no parent"

    invoke-static {v0, v2, v1}, Landroid/support/v4/af1;->K(ZLjava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroid/support/v4/pn0;->do(I)Landroid/support/v4/pn0;

    move-result-object v0

    return-object v0
.end method
