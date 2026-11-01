.class public final Lcom/google/common/base/Splitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Splitter$else;,
        Lcom/google/common/base/Splitter$Strategy;,
        Lcom/google/common/base/Splitter$case;
    }
.end annotation


# instance fields
.field private final do:Lcom/google/common/base/new;

.field private final for:Lcom/google/common/base/Splitter$Strategy;

.field private final if:Z

.field private final new:I


# direct methods
.method private constructor <init>(Lcom/google/common/base/Splitter$Strategy;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/common/base/new;->volatile()Lcom/google/common/base/new;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/new;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/new;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/base/Splitter;->for:Lcom/google/common/base/Splitter$Strategy;

    .line 4
    iput-boolean p2, p0, Lcom/google/common/base/Splitter;->if:Z

    .line 5
    iput-object p3, p0, Lcom/google/common/base/Splitter;->do:Lcom/google/common/base/new;

    .line 6
    iput p4, p0, Lcom/google/common/base/Splitter;->new:I

    return-void
.end method

.method private static break(Lcom/google/common/base/case;)Lcom/google/common/base/Splitter;
    .locals 2

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/common/base/case;->matcher(Ljava/lang/CharSequence;)Lcom/google/common/base/try;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/try;->new()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "The pattern may not match the empty string: %s"

    .line 2
    invoke-static {v0, v1, p0}, Landroid/support/v4/af1;->return(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$for;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$for;-><init>(Lcom/google/common/base/case;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    return-object v0
.end method

.method public static catch(Ljava/lang/String;)Lcom/google/common/base/Splitter;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "The separator may not be the empty string."

    invoke-static {v0, v3}, Landroid/support/v4/af1;->try(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/common/base/Splitter;->goto(C)Lcom/google/common/base/Splitter;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$if;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$if;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    return-object v0
.end method

.method public static class(Ljava/util/regex/Pattern;)Lcom/google/common/base/Splitter;
    .locals 1
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/base/const;

    invoke-direct {v0, p0}, Lcom/google/common/base/const;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0}, Lcom/google/common/base/Splitter;->break(Lcom/google/common/base/case;)Lcom/google/common/base/Splitter;

    move-result-object p0

    return-object p0
.end method

.method public static const(Ljava/lang/String;)Lcom/google/common/base/Splitter;
    .locals 0
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/native;->if(Ljava/lang/String;)Lcom/google/common/base/case;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Splitter;->break(Lcom/google/common/base/case;)Lcom/google/common/base/Splitter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic do(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/base/Splitter;->throw(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic for(Lcom/google/common/base/Splitter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/common/base/Splitter;->if:Z

    return p0
.end method

.method public static goto(C)Lcom/google/common/base/Splitter;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/base/new;->while(C)Lcom/google/common/base/new;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Splitter;->this(Lcom/google/common/base/new;)Lcom/google/common/base/Splitter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic if(Lcom/google/common/base/Splitter;)Lcom/google/common/base/new;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/base/Splitter;->do:Lcom/google/common/base/new;

    return-object p0
.end method

.method public static synthetic new(Lcom/google/common/base/Splitter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/base/Splitter;->new:I

    return p0
.end method

.method public static this(Lcom/google/common/base/new;)Lcom/google/common/base/Splitter;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$do;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$do;-><init>(Lcom/google/common/base/new;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    return-object v0
.end method

.method private throw(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/base/Splitter;->for:Lcom/google/common/base/Splitter$Strategy;

    invoke-interface {v0, p0, p1}, Lcom/google/common/base/Splitter$Strategy;->iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public static try(I)Lcom/google/common/base/Splitter;
    .locals 2

    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The length may not be less than 1"

    .line 1
    invoke-static {v0, v1}, Landroid/support/v4/af1;->try(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$new;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$new;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    return-object v0
.end method


# virtual methods
.method public case(I)Lcom/google/common/base/Splitter;
    .locals 4

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "must be greater than zero: %s"

    .line 1
    invoke-static {v0, v1, p1}, Landroid/support/v4/af1;->catch(ZLjava/lang/String;I)V

    .line 2
    new-instance v0, Lcom/google/common/base/Splitter;

    iget-object v1, p0, Lcom/google/common/base/Splitter;->for:Lcom/google/common/base/Splitter$Strategy;

    iget-boolean v2, p0, Lcom/google/common/base/Splitter;->if:Z

    iget-object v3, p0, Lcom/google/common/base/Splitter;->do:Lcom/google/common/base/new;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/new;I)V

    return-object v0
.end method

.method public else()Lcom/google/common/base/Splitter;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/base/Splitter;

    iget-object v1, p0, Lcom/google/common/base/Splitter;->for:Lcom/google/common/base/Splitter$Strategy;

    iget-object v2, p0, Lcom/google/common/base/Splitter;->do:Lcom/google/common/base/new;

    iget v3, p0, Lcom/google/common/base/Splitter;->new:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/new;I)V

    return-object v0
.end method

.method public final(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/base/Splitter$try;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Splitter$try;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public import(Lcom/google/common/base/new;)Lcom/google/common/base/Splitter;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/base/Splitter;

    iget-object v1, p0, Lcom/google/common/base/Splitter;->for:Lcom/google/common/base/Splitter$Strategy;

    iget-boolean v2, p0, Lcom/google/common/base/Splitter;->if:Z

    iget v3, p0, Lcom/google/common/base/Splitter;->new:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;ZLcom/google/common/base/new;I)V

    return-object v0
.end method

.method public native(C)Lcom/google/common/base/Splitter$case;
    .locals 0
    .annotation build Landroid/support/v4/o8;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Splitter;->goto(C)Lcom/google/common/base/Splitter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/Splitter;->public(Lcom/google/common/base/Splitter;)Lcom/google/common/base/Splitter$case;

    move-result-object p1

    return-object p1
.end method

.method public public(Lcom/google/common/base/Splitter;)Lcom/google/common/base/Splitter$case;
    .locals 2
    .annotation build Landroid/support/v4/o8;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/base/Splitter$case;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/base/Splitter$case;-><init>(Lcom/google/common/base/Splitter;Lcom/google/common/base/Splitter;Lcom/google/common/base/Splitter$do;)V

    return-object v0
.end method

.method public return(Ljava/lang/String;)Lcom/google/common/base/Splitter$case;
    .locals 0
    .annotation build Landroid/support/v4/o8;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Splitter;->catch(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/Splitter;->public(Lcom/google/common/base/Splitter;)Lcom/google/common/base/Splitter$case;

    move-result-object p1

    return-object p1
.end method

.method public super(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/base/Splitter;->throw(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public while()Lcom/google/common/base/Splitter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/base/new;->k()Lcom/google/common/base/new;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Splitter;->import(Lcom/google/common/base/new;)Lcom/google/common/base/Splitter;

    move-result-object v0

    return-object v0
.end method
