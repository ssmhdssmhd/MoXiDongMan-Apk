.class public Lfreemarker/core/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final for:I = 0x0

.field public static final new:I = 0x1

.field public static final try:I = 0x2


# instance fields
.field private final do:Ljava/lang/Object;

.field private final if:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfreemarker/core/v;->do:Ljava/lang/Object;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iput p1, p0, Lfreemarker/core/v;->if:I

    return-void
.end method

.method private else()Lfreemarker/core/d0;
    .locals 2

    .line 1
    invoke-static {}, Lfreemarker/core/d0;->w1()Lfreemarker/core/d0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current environment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private goto(Lfreemarker/core/d0;)Lfreemarker/core/t;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/v;->if:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lfreemarker/core/t;->synchronized()Lfreemarker/core/t;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/core/t;->synchronized()Lfreemarker/core/t;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Landroid/support/v4/mc;

    invoke-direct {p1}, Landroid/support/v4/mc;-><init>()V

    throw p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lfreemarker/core/t;->synchronized()Lfreemarker/core/t;

    move-result-object p1

    :cond_2
    return-object p1
.end method


# virtual methods
.method public final break(Ljava/lang/Object;Landroid/support/v4/h52;)V
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/core/v;->if:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/v;->do:Ljava/lang/Object;

    invoke-virtual {p2, v0, p1}, Lfreemarker/core/t;->l0(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This is not a template-scope attribute"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final case(Lfreemarker/template/static;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/core/v;->if:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/v;->do:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lfreemarker/core/t;->while(Ljava/lang/Object;Lfreemarker/core/v;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not a template-scope attribute"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final catch(Ljava/lang/Object;Lfreemarker/core/d0;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lfreemarker/core/v;->goto(Lfreemarker/core/d0;)Lfreemarker/core/t;

    move-result-object p2

    iget-object v0, p0, Lfreemarker/core/v;->do:Ljava/lang/Object;

    invoke-virtual {p2, v0, p1}, Lfreemarker/core/t;->l0(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final class(Ljava/lang/Object;Lfreemarker/template/do;)V
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/core/v;->if:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/v;->do:Ljava/lang/Object;

    invoke-virtual {p2, v0, p1}, Lfreemarker/core/t;->l0(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This is not a configuration-scope attribute"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final const(Ljava/lang/Object;Lfreemarker/template/static;)V
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/core/v;->if:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/v;->do:Ljava/lang/Object;

    invoke-virtual {p2, v0, p1}, Lfreemarker/core/t;->l0(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This is not a template-scope attribute"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public do()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public for(Landroid/support/v4/h52;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/core/v;->if:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/v;->do:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lfreemarker/core/t;->while(Ljava/lang/Object;Lfreemarker/core/v;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not a template-scope attribute"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final if()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-direct {p0}, Lfreemarker/core/v;->else()Lfreemarker/core/d0;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/v;->goto(Lfreemarker/core/d0;)Lfreemarker/core/t;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/v;->do:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lfreemarker/core/t;->while(Ljava/lang/Object;Lfreemarker/core/v;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final new(Lfreemarker/core/d0;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/v;->goto(Lfreemarker/core/d0;)Lfreemarker/core/t;

    move-result-object p1

    iget-object v0, p0, Lfreemarker/core/v;->do:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lfreemarker/core/t;->while(Ljava/lang/Object;Lfreemarker/core/v;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final this(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lfreemarker/core/v;->else()Lfreemarker/core/d0;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/v;->goto(Lfreemarker/core/d0;)Lfreemarker/core/t;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/v;->do:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lfreemarker/core/t;->l0(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final try(Lfreemarker/template/do;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/core/v;->if:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/v;->do:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lfreemarker/core/t;->while(Ljava/lang/Object;Lfreemarker/core/v;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not a template-scope attribute"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
