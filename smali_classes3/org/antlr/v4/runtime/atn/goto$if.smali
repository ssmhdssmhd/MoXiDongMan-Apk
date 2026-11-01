.class Lorg/antlr/v4/runtime/atn/goto$if;
.super Landroid/support/v4/pc0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/atn/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/pc0<",
        "Landroid/support/v4/switch;",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/atn/goto$do;->do:Lorg/antlr/v4/runtime/atn/goto$do;

    invoke-direct {p0, v0}, Landroid/support/v4/pc0;-><init>(Landroid/support/v4/interface;)V

    return-void
.end method
