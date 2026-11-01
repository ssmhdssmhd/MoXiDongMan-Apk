.class public Landroid/support/v4/ns0;
.super Landroid/support/v4/zt;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/dfa/do;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/cf2;->case:Landroid/support/v4/cf2;

    invoke-direct {p0, p1, v0}, Landroid/support/v4/zt;-><init>(Lorg/antlr/v4/runtime/dfa/do;Lorg/antlr/v4/runtime/Vocabulary;)V

    return-void
.end method


# virtual methods
.method public do(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
