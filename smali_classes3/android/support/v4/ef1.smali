.class public Landroid/support/v4/ef1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/antlr/v4/runtime/atn/else;",
            "Lorg/antlr/v4/runtime/atn/else;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/ef1;->do:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public do(Lorg/antlr/v4/runtime/atn/else;)Lorg/antlr/v4/runtime/atn/else;
    .locals 1

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/atn/else;->for:Landroid/support/v4/z60;

    if-ne p1, v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/ef1;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/else;

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/support/v4/ef1;->do:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public for()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ef1;->do:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public if(Lorg/antlr/v4/runtime/atn/else;)Lorg/antlr/v4/runtime/atn/else;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ef1;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/atn/else;

    return-object p1
.end method
