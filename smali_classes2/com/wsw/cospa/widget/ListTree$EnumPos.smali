.class public Lcom/wsw/cospa/widget/ListTree$EnumPos;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/ListTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnumPos"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/ListTree;

.field private treeEnumStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wsw/cospa/widget/ListTree;)V
    .locals 3

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/widget/ListTree$EnumPos;->this$0:Lcom/wsw/cospa/widget/ListTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/widget/ListTree$EnumPos;->treeEnumStack:Ljava/util/Stack;

    .line 4
    new-instance v1, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;

    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree;->access$000(Lcom/wsw/cospa/widget/ListTree;)Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;-><init>(Lcom/wsw/cospa/widget/ListTree$EnumPos;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/widget/ListTree;Lcom/wsw/cospa/widget/ListTree$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/ListTree$EnumPos;-><init>(Lcom/wsw/cospa/widget/ListTree;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/wsw/cospa/widget/ListTree$EnumPos;)Ljava/util/Stack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/ListTree$EnumPos;->treeEnumStack:Ljava/util/Stack;

    return-object p0
.end method
