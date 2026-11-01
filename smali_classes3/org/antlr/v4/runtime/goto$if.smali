.class public Lorg/antlr/v4/runtime/goto$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/tree/ParseTreeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field public static final do:Lorg/antlr/v4/runtime/goto$if;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/goto$if;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/goto$if;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/goto$if;->do:Lorg/antlr/v4/runtime/goto$if;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterEveryRule(Landroid/support/v4/qc1;)V
    .locals 0

    return-void
.end method

.method public exitEveryRule(Landroid/support/v4/qc1;)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroid/support/v4/qc1;->new:Ljava/util/List;

    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->trimToSize()V

    :cond_0
    return-void
.end method

.method public visitErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)V
    .locals 0

    return-void
.end method

.method public visitTerminal(Lorg/antlr/v4/runtime/tree/TerminalNode;)V
    .locals 0

    return-void
.end method
