.class Lorg/antlr/v4/runtime/break$do;
.super Lorg/antlr/v4/runtime/break$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field public final synthetic case:Lorg/antlr/v4/runtime/break;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/break;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/antlr/v4/runtime/break$do;->case:Lorg/antlr/v4/runtime/break;

    add-int/lit8 p2, p2, 0x1

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/break$if;-><init>(Lorg/antlr/v4/runtime/break;ILjava/lang/Object;)V

    return-void
.end method
