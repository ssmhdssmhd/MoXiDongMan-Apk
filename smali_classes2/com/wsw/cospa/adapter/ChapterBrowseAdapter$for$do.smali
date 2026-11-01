.class Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for$do;
.super Lcom/google/common/cache/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/for<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;


# direct methods
.method private constructor <init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for$do;->do:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;

    invoke-direct {p0}, Lcom/google/common/cache/for;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for$do;-><init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;)V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for$do;->do:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;

    invoke-static {p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;->do(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for$do;->do(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
