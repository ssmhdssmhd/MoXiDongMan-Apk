.class Lorg/antlr/v4/runtime/dfa/do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/antlr/v4/runtime/dfa/do;->if()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/support/v4/au;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lorg/antlr/v4/runtime/dfa/do;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/dfa/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/antlr/v4/runtime/dfa/do$do;->do:Lorg/antlr/v4/runtime/dfa/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/au;

    check-cast p2, Landroid/support/v4/au;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/dfa/do$do;->do(Landroid/support/v4/au;Landroid/support/v4/au;)I

    move-result p1

    return p1
.end method

.method public do(Landroid/support/v4/au;Landroid/support/v4/au;)I
    .locals 0

    .line 1
    iget p1, p1, Landroid/support/v4/au;->do:I

    iget p2, p2, Landroid/support/v4/au;->do:I

    sub-int/2addr p1, p2

    return p1
.end method
