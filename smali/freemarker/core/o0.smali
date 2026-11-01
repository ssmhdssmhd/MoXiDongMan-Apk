.class public Lfreemarker/core/o0;
.super Ljavax/swing/JTree;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lfreemarker/template/static;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lfreemarker/template/static;->o1()Lfreemarker/core/b4;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/swing/JTree;-><init>(Ljavax/swing/tree/TreeNode;)V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;ZZZIZ)Ljava/lang/String;
    .locals 0

    .line 1
    instance-of p2, p1, Lfreemarker/core/b4;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lfreemarker/core/b4;

    invoke-virtual {p1}, Lfreemarker/core/b4;->continue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public if(Lfreemarker/template/static;)V
    .locals 1

    .line 1
    new-instance v0, Ljavax/swing/tree/DefaultTreeModel;

    invoke-virtual {p1}, Lfreemarker/template/static;->o1()Lfreemarker/core/b4;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/swing/tree/DefaultTreeModel;-><init>(Ljavax/swing/tree/TreeNode;)V

    invoke-virtual {p0, v0}, Lfreemarker/core/o0;->setModel(Ljavax/swing/tree/TreeModel;)V

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/o0;->invalidate()V

    return-void
.end method
