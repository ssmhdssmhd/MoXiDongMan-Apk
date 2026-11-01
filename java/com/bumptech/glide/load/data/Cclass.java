package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import androidx.annotation.NonNull;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.data.class, reason: invalid class name */
/* loaded from: classes.dex */
public class Cclass extends Cthis<InputStream> {

    /* renamed from: break, reason: not valid java name */
    private static final UriMatcher f9501break;

    /* renamed from: case, reason: not valid java name */
    private static final int f9502case = 2;

    /* renamed from: else, reason: not valid java name */
    private static final int f9503else = 3;

    /* renamed from: goto, reason: not valid java name */
    private static final int f9504goto = 4;

    /* renamed from: this, reason: not valid java name */
    private static final int f9505this = 5;

    /* renamed from: try, reason: not valid java name */
    private static final int f9506try = 1;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f9501break = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "contacts/#/display_photo", 4);
        uriMatcher.addURI("com.android.contacts", "phone_lookup/*", 5);
    }

    public Cclass(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    /* renamed from: case, reason: not valid java name */
    private InputStream m11281case(ContentResolver contentResolver, Uri uri) {
        return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
    }

    /* renamed from: try, reason: not valid java name */
    private InputStream m11282try(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        int iMatch = f9501break.match(uri);
        if (iMatch != 1) {
            if (iMatch == 3) {
                return m11281case(contentResolver, uri);
            }
            if (iMatch != 5) {
                return contentResolver.openInputStream(uri);
            }
        }
        Uri uriLookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uri);
        if (uriLookupContact != null) {
            return m11281case(contentResolver, uriLookupContact);
        }
        throw new FileNotFoundException("Contact cannot be found");
    }

    @Override // com.bumptech.glide.load.data.Cthis
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo11283do(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.Cthis
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public InputStream mo11285if(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        InputStream inputStreamM11282try = m11282try(uri, contentResolver);
        if (inputStreamM11282try != null) {
            return inputStreamM11282try;
        }
        throw new FileNotFoundException("InputStream is null for " + uri);
    }
}
