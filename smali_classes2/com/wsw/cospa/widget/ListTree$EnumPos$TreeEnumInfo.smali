.class Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/ListTree$EnumPos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TreeEnumInfo"
.end annotation


# instance fields
.field private nodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private planeIndex:I

.field public final synthetic this$1:Lcom/wsw/cospa/widget/ListTree$EnumPos;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/ListTree$EnumPos;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;->this$1:Lcom/wsw/cospa/widget/ListTree$EnumPos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;->nodeList:Ljava/util/List;

    .line 3
    iput p3, p0, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;->planeIndex:I

    return-void
.end method

.method public static synthetic access$800(Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;->planeIndex:I

    return p0
.end method

.method public static synthetic access$808(Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;->planeIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;->planeIndex:I

    return v0
.end method

.method public static synthetic access$900(Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;->nodeList:Ljava/util/List;

    return-object p0
.end method
