.class Lcom/wsw/cospa/activity/ZipFileManagerActivity$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/activity/ZipFileManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/wsw/cospa/bean/Node;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;


# direct methods
.method private constructor <init>(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$try;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/Node;

    check-cast p2, Lcom/wsw/cospa/bean/Node;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/activity/ZipFileManagerActivity$try;->do(Lcom/wsw/cospa/bean/Node;Lcom/wsw/cospa/bean/Node;)I

    move-result p1

    return p1
.end method

.method public do(Lcom/wsw/cospa/bean/Node;Lcom/wsw/cospa/bean/Node;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$try;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    iget-object p1, p1, Lcom/wsw/cospa/bean/Node;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->x0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$try;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    iget-object p2, p2, Lcom/wsw/cospa/bean/Node;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->x0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
