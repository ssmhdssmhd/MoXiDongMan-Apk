.class Lcom/wsw/cospa/activity/FileSelectorActivity$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/activity/FileSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/wsw/cospa/bean/RipeFile;",
        ">;"
    }
.end annotation


# instance fields
.field public do:I

.field public final synthetic if:Lcom/wsw/cospa/activity/FileSelectorActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/FileSelectorActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity$new;->if:Lcom/wsw/cospa/activity/FileSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/wsw/cospa/activity/FileSelectorActivity$new;->do:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/RipeFile;

    check-cast p2, Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/activity/FileSelectorActivity$new;->do(Lcom/wsw/cospa/bean/RipeFile;Lcom/wsw/cospa/bean/RipeFile;)I

    move-result p1

    return p1
.end method

.method public do(Lcom/wsw/cospa/bean/RipeFile;Lcom/wsw/cospa/bean/RipeFile;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getFile()Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getFile()Ljava/io/File;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity$new;->do:I

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity$new;->if:Lcom/wsw/cospa/activity/FileSelectorActivity;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/activity/FileSelectorActivity;->protected(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity$new;->if:Lcom/wsw/cospa/activity/FileSelectorActivity;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/wsw/cospa/activity/FileSelectorActivity;->protected(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    if-ne v0, v1, :cond_3

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity$new;->if:Lcom/wsw/cospa/activity/FileSelectorActivity;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/wsw/cospa/activity/FileSelectorActivity;->protected(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity$new;->if:Lcom/wsw/cospa/activity/FileSelectorActivity;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/activity/FileSelectorActivity;->protected(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 9
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :cond_5
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity$new;->if:Lcom/wsw/cospa/activity/FileSelectorActivity;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/activity/FileSelectorActivity;->protected(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity$new;->if:Lcom/wsw/cospa/activity/FileSelectorActivity;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/wsw/cospa/activity/FileSelectorActivity;->protected(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
