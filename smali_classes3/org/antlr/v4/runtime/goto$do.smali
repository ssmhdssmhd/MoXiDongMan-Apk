.class public Lorg/antlr/v4/runtime/goto$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/tree/ParseTreeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field public final synthetic do:Lorg/antlr/v4/runtime/goto;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/goto;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/antlr/v4/runtime/goto$do;->do:Lorg/antlr/v4/runtime/goto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterEveryRule(Landroid/support/v4/qc1;)V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/antlr/v4/runtime/goto$do;->do:Lorg/antlr/v4/runtime/goto;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/this;->class()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/vo1;->try()I

    move-result p1

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", LT(1)="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/antlr/v4/runtime/goto$do;->do:Lorg/antlr/v4/runtime/goto;

    iget-object p1, p1, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public exitEveryRule(Landroid/support/v4/qc1;)V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/antlr/v4/runtime/goto$do;->do:Lorg/antlr/v4/runtime/goto;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/this;->class()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/vo1;->try()I

    move-result p1

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", LT(1)="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/antlr/v4/runtime/goto$do;->do:Lorg/antlr/v4/runtime/goto;

    iget-object p1, p1, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public visitErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)V
    .locals 0

    return-void
.end method

.method public visitTerminal(Lorg/antlr/v4/runtime/tree/TerminalNode;)V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/antlr/v4/runtime/tree/TerminalNode;->getSymbol()Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " rule "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/antlr/v4/runtime/goto$do;->do:Lorg/antlr/v4/runtime/goto;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->class()[Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/antlr/v4/runtime/goto$do;->do:Lorg/antlr/v4/runtime/goto;

    iget-object v2, v2, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-virtual {v2}, Landroid/support/v4/vo1;->try()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
