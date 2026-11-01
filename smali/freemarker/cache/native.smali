.class public abstract Lfreemarker/cache/native;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Lfreemarker/template/do;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract do(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/h52;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/i52;
        }
    .end annotation
.end method

.method public final for(Lfreemarker/template/do;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/native;->do:Lfreemarker/template/do;

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The TemplateConfigurationFactory is already bound to another Configuration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iput-object p1, p0, Lfreemarker/cache/native;->do:Lfreemarker/template/do;

    .line 4
    invoke-virtual {p0, p1}, Lfreemarker/cache/native;->new(Lfreemarker/template/do;)V

    return-void
.end method

.method public if()Lfreemarker/template/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/native;->do:Lfreemarker/template/do;

    return-object v0
.end method

.method public abstract new(Lfreemarker/template/do;)V
.end method
