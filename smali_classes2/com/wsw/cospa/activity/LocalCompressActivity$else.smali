.class Lcom/wsw/cospa/activity/LocalCompressActivity$else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/activity/LocalCompressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "else"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/zip/ZipEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/LocalCompressActivity;


# direct methods
.method private constructor <init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$else;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/LocalCompressActivity;Lcom/wsw/cospa/activity/LocalCompressActivity$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity$else;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/util/zip/ZipEntry;

    check-cast p2, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/activity/LocalCompressActivity$else;->do(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipEntry;)I

    move-result p1

    return p1
.end method

.method public do(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipEntry;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$else;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->c0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$else;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/wsw/cospa/activity/LocalCompressActivity;->c0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
