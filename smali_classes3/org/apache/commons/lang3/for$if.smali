.class Lorg/apache/commons/lang3/for$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field private do:C

.field private for:Z

.field private final if:Lorg/apache/commons/lang3/for;


# direct methods
.method private constructor <init>(Lorg/apache/commons/lang3/for;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/lang3/for$if;->if:Lorg/apache/commons/lang3/for;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lorg/apache/commons/lang3/for$if;->for:Z

    .line 5
    invoke-static {p1}, Lorg/apache/commons/lang3/for;->access$100(Lorg/apache/commons/lang3/for;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {p1}, Lorg/apache/commons/lang3/for;->access$200(Lorg/apache/commons/lang3/for;)C

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 7
    invoke-static {p1}, Lorg/apache/commons/lang3/for;->access$300(Lorg/apache/commons/lang3/for;)C

    move-result v1

    const v3, 0xffff

    if-ne v1, v3, :cond_0

    .line 8
    iput-boolean v2, p0, Lorg/apache/commons/lang3/for$if;->for:Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/for;->access$300(Lorg/apache/commons/lang3/for;)C

    move-result p1

    add-int/2addr p1, v0

    int-to-char p1, p1

    iput-char p1, p0, Lorg/apache/commons/lang3/for$if;->do:C

    goto :goto_0

    .line 10
    :cond_1
    iput-char v2, p0, Lorg/apache/commons/lang3/for$if;->do:C

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/lang3/for;->access$200(Lorg/apache/commons/lang3/for;)C

    move-result p1

    iput-char p1, p0, Lorg/apache/commons/lang3/for$if;->do:C

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/lang3/for;Lorg/apache/commons/lang3/for$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/for$if;-><init>(Lorg/apache/commons/lang3/for;)V

    return-void
.end method

.method private if()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/for$if;->if:Lorg/apache/commons/lang3/for;

    invoke-static {v0}, Lorg/apache/commons/lang3/for;->access$100(Lorg/apache/commons/lang3/for;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-char v0, p0, Lorg/apache/commons/lang3/for$if;->do:C

    const v2, 0xffff

    if-ne v0, v2, :cond_0

    .line 3
    iput-boolean v1, p0, Lorg/apache/commons/lang3/for$if;->for:Z

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 4
    iget-object v3, p0, Lorg/apache/commons/lang3/for$if;->if:Lorg/apache/commons/lang3/for;

    invoke-static {v3}, Lorg/apache/commons/lang3/for;->access$200(Lorg/apache/commons/lang3/for;)C

    move-result v3

    if-ne v0, v3, :cond_2

    .line 5
    iget-object v0, p0, Lorg/apache/commons/lang3/for$if;->if:Lorg/apache/commons/lang3/for;

    invoke-static {v0}, Lorg/apache/commons/lang3/for;->access$300(Lorg/apache/commons/lang3/for;)C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 6
    iput-boolean v1, p0, Lorg/apache/commons/lang3/for$if;->for:Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/lang3/for$if;->if:Lorg/apache/commons/lang3/for;

    invoke-static {v0}, Lorg/apache/commons/lang3/for;->access$300(Lorg/apache/commons/lang3/for;)C

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/lang3/for$if;->do:C

    goto :goto_0

    .line 8
    :cond_2
    iget-char v0, p0, Lorg/apache/commons/lang3/for$if;->do:C

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/lang3/for$if;->do:C

    goto :goto_0

    .line 9
    :cond_3
    iget-char v0, p0, Lorg/apache/commons/lang3/for$if;->do:C

    iget-object v2, p0, Lorg/apache/commons/lang3/for$if;->if:Lorg/apache/commons/lang3/for;

    invoke-static {v2}, Lorg/apache/commons/lang3/for;->access$300(Lorg/apache/commons/lang3/for;)C

    move-result v2

    if-ge v0, v2, :cond_4

    .line 10
    iget-char v0, p0, Lorg/apache/commons/lang3/for$if;->do:C

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/lang3/for$if;->do:C

    goto :goto_0

    .line 11
    :cond_4
    iput-boolean v1, p0, Lorg/apache/commons/lang3/for$if;->for:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Character;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/for$if;->for:Z

    if-eqz v0, :cond_0

    .line 2
    iget-char v0, p0, Lorg/apache/commons/lang3/for$if;->do:C

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/lang3/for$if;->if()V

    .line 4
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/for$if;->for:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/for$if;->do()Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
