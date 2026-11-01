.class public final synthetic Lcom/wsw/cospa/activity/case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/BackupActivity$if;

.field public final synthetic if:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/BackupActivity$if;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/activity/case;->do:Lcom/wsw/cospa/activity/BackupActivity$if;

    iput-object p2, p0, Lcom/wsw/cospa/activity/case;->if:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/wsw/cospa/activity/case;->do:Lcom/wsw/cospa/activity/BackupActivity$if;

    iget-object v1, p0, Lcom/wsw/cospa/activity/case;->if:[Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/wsw/cospa/activity/BackupActivity$if;->do(Lcom/wsw/cospa/activity/BackupActivity$if;[Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
